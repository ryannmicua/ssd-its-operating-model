$mdPath = Join-Path $PSScriptRoot 'its_operating_model.md'
$docxPath = Join-Path $PSScriptRoot 'its_operating_model.docx'
if (-not (Test-Path $mdPath)) {
    throw "Markdown file not found at $mdPath"
}
$tempRoot = Join-Path $PSScriptRoot 'docx_temp'
if (Test-Path $tempRoot) {
    Remove-Item -Recurse -Force $tempRoot
}
New-Item -ItemType Directory -Path $tempRoot | Out-Null
New-Item -ItemType Directory -Path (Join-Path $tempRoot '_rels') | Out-Null
$wordDir = Join-Path $tempRoot 'word'
New-Item -ItemType Directory -Path $wordDir | Out-Null
New-Item -ItemType Directory -Path (Join-Path $wordDir '_rels') | Out-Null
$mdContent = Get-Content -Path $mdPath -Raw -Encoding UTF8
$lines = [System.Text.RegularExpressions.Regex]::Split($mdContent, "`r?`n")
$bulletChar = [char]0x2022
$paragraphs = [System.Collections.Generic.List[string]]::new()
foreach ($line in $lines) {
    $trimmed = $line.TrimEnd()
    $style = ''
    $text = ''
    if ($trimmed -match '^(#+)\s*(.*)$') {
        $level = [Math]::Min($matches[1].Length, 6)
        $style = "Heading$level"
        $text = [System.Security.SecurityElement]::Escape($matches[2])
        if ([string]::IsNullOrEmpty($text)) {
            $text = ' '
        }
    } elseif ($trimmed -match '^\s*-\s+(.*)$') {
        $style = 'ListParagraph'
        $text = [System.Security.SecurityElement]::Escape("$bulletChar $($matches[1])")
    } elseif ($trimmed -eq '') {
        $text = ''
    } else {
        $text = [System.Security.SecurityElement]::Escape($trimmed)
    }
    $paragraph = '<w:p>'
    if ($style -ne '') {
        $paragraph += "<w:pPr><w:pStyle w:val='$style'/></w:pPr>"
    }
    $paragraph += "<w:r><w:t xml:space='preserve'>$text</w:t></w:r></w:p>"
    $paragraphs.Add($paragraph)
}
$body = "<w:body>`n" + ($paragraphs -join "`n") + "`n<w:sectPr><w:pgSz w:w='12240' w:h='15840'/></w:sectPr>`n</w:body>"
$documentXml = "<?xml version='1.0' encoding='UTF-8' standalone='yes'?>`n<w:document xmlns:w='http://schemas.openxmlformats.org/wordprocessingml/2006/main'>$body`n</w:document>"
$documentXml | Out-File -LiteralPath (Join-Path $wordDir 'document.xml') -Encoding UTF8 -Force
$contentTypes = @"
<?xml version="1.0" encoding="UTF-8"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
  <Default Extension="xml" ContentType="application/xml"/>
  <Override PartName="/word/document.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"/>
</Types>
"@
$contentTypes | Out-File -LiteralPath (Join-Path $tempRoot '[Content_Types].xml') -Encoding UTF8 -Force
$rootRels = @"
<?xml version="1.0" encoding="UTF-8"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>
</Relationships>
"@
$rootRels | Out-File -LiteralPath (Join-Path (Join-Path $tempRoot '_rels') '.rels') -Encoding UTF8 -Force
$docRels = @"
<?xml version="1.0" encoding="UTF-8"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
</Relationships>
"@
$docRels | Out-File -LiteralPath (Join-Path (Join-Path $wordDir '_rels') 'document.xml.rels') -Encoding UTF8 -Force
if (Test-Path $docxPath) {
    Remove-Item $docxPath
}
$tmpZip = "$docxPath.zip"
if (Test-Path $tmpZip) {
    Remove-Item $tmpZip
}
Push-Location $tempRoot
try {
    Compress-Archive -Path * -DestinationPath $tmpZip -Force
} finally {
    Pop-Location
}
Rename-Item -Path $tmpZip -NewName $docxPath -Force
Remove-Item -Recurse -Force $tempRoot
