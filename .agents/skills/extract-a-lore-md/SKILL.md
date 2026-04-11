---
name: extract-a-lore-md
description: "LoreSpec v0.1 transcript extraction into a structured LORE.md Session Digest. Use when given an AI conversation transcript or export and asked to classify the session, read the full conversation, extract durable knowledge objects, map connections and trails, and produce a source-traceable Markdown file with the canonical LoreSpec frontmatter and body sections."
---

# Extract a LORE.md

You are the Scribe: process an AI conversation transcript and produce a LoreSpec-compliant `LORE.md` Session Digest that turns episodic chat into a persistent, networked knowledge base.

## Non-Negotiables

- Do not invent facts, approvals, owners, decisions, evidence, completion status, or acceptance.
- If the transcript is missing context, mark uncertainty explicitly.
- Every semantic object must include a traceable link back to its episodic source (use quoted excerpts and transcript line references).
- Prefer judgment over completeness: extract what will matter 6+ weeks from now.
- Treat `LORE.md` as a Markdown document with YAML frontmatter, not as a prose summary.
- Keep output aligned with `lorespec: "0.1"` and the canonical object/connection vocabulary.

## Inputs You Need

- Transcript text, or a file path to the transcript.
- Source system: `claude | chatgpt | gemini | codex | other`.
- Date (use the user-provided date if present; otherwise use today's date).
- Optional: trail name(s) and any prior-session object IDs you should link to.
- Optional: output folder.

If any of these are missing, produce output but label it as `working draft` within the document body.

## Storage Rules

- Store output files in `session_digests/`.
- Use the file name structure `YYYYMMDDXX_[title slug underscored].md` (example: `2026041001_auth_session_to_token_decision.md`).
- Set the frontmatter `id` to `YYYYMMDDXX`, where `XX` is a 2-digit incremental number for that date (starting at `01`).
- Determine `XX` by scanning the target output folder for existing digests that match `YYYYMMDD??_*.md`, then choose the next available number.
  - Example: if the folder already contains `2026041001_*.md` and `2026041002_*.md`, then the next digest for `20260410` uses `id: "2026041003"`.
  - If you cannot access the filesystem to scan existing files, default to `XX = 01` and note in the document body that the ID may need renumbering.
- Derive the `title slug underscored` from the frontmatter `topic` value.
- If the user did not specify where to save the output and `session_digests/` does not exist, ask to create `session_digests/` before writing the file.
- If the user specified a different output folder, honor that folder instead of `session_digests/`.

## Examples

### Minimal Input

```text
Transcript source: codex
Date: 2026-04-10
Trail: auth-refactor

1. User: We need to decide whether auth should stay session-based or move to token-based auth.
2. Assistant: Let's compare the tradeoffs...
3. User: We should move to token-based auth because we need mobile clients.
```

### Sample Output

```markdown
---
lorespec: "0.1"
id: "2026041001"
date: "2026-04-10"
source: "codex"
topic: "Decided to move from session-based auth to token-based auth for mobile support"
tags: [auth, decision, mobile]
classification:
  type: "technical"
  secondary_type: "architecture"
  domains: [authentication, mobile]
  value: "high"
trails: [auth-refactor]
---

## Session Arc

### Started
The conversation began with a comparison of session-based and token-based authentication.

### Pivots
- The decision shifted toward tokens when mobile clients became a stated requirement.

### Ended
The session landed on token-based auth as the preferred direction for this change.

## DECISION

### D1
- Decision: Move from session-based auth to token-based auth.
- Issue: How to support mobile clients without relying on server-side session state.
- Positions: Keep sessions; move to tokens.
- Arguments: Tokens are easier to use across mobile clients; sessions keep state centralized.
- Warrant: If mobile support is a priority, the auth model should minimize server-side session dependence.
- Qualifier: in this case
- Status: settled
- Source: "We should move to token-based auth because we need mobile clients." (Transcript L3-L3)

## NEXT_STEP

### NS1
- What: Draft the migration plan for token issuance and validation.
- Prompted by: The auth model decision.
- Urgency: soon
- Source: The decision in D1 (Transcript L3-L3)

## Connections

D1 --[led_to]--> NS1

## Trail Updates

- Extends `auth-refactor`.
```

### Default Storage Example

- Folder: `session_digests/`
- File name: `2026041001_auth_session_to_token_decision.md`

## Procedure

1. **Classify the session**
- Determine `classification.type`, `domains`, and `value` (`high | medium | low | skip`).
- If value is `skip`, say so and do not force extraction; still emit valid frontmatter and a short rationale.
- Support multi-type sessions by classifying segments when the conversation shifts materially.

2. **Normalize the transcript for traceability**
- If the transcript is not already line-numbered, add logical line numbers in your own notes (do not rewrite the transcript verbatim).
- When citing: include a short quote (<= 25 words) plus `(Transcript Lx-Ly)`.

3. **Identify the Session Arc**
- Started: where it began.
- Pivots: key moments where thinking changed and what triggered it.
- Ended: where it landed.

4. **Extract knowledge objects (8 types)**
- Emit only sections that have objects.
- Use within-session IDs: `A1`, `D1`, `I1`, `P1`, `OQ1`, `R1`, `NS1`, `S1`.
- Target 150-800 tokens per object.
- Ensure each object is standalone and searchable.
- Keep object sections aligned with the canonical names: `ARTIFACT`, `DECISION`, `INSIGHT`, `PATTERN`, `OPEN_QUESTION`, `REFERENCE`, `NEXT_STEP`, `SOLUTION`.

5. **Connect before you collect**
- After extracting an object, add at least one relationship if applicable.
- Use connection types: `led_to`, `informed_by`, `supersedes`, `contradicts`, `related_to`, `depends_on`, `instance_of`.
- Prefer links to prior-session objects when the transcript clearly extends an existing trail.

6. **Trail updates**
- State which trails this extends or creates.
- If linking to prior sessions, reference by trail and object ID.
- Before writing the file, resolve the output location:
  - use the user-specified folder if provided
  - otherwise use `session_digests/`
  - if `session_digests/` is missing and no alternate folder was specified, ask to create it

## LoreSpec Output Format

Produce a Markdown file with YAML frontmatter:

```yaml
---
lorespec: "0.1"
id: "YYYYMMDDXX"
date: "YYYY-MM-DD"
source: "claude|chatgpt|gemini|codex|other"
topic: "[one-sentence description]"
tags: [tag1, tag2, tag3]
classification:
  type: "strategy|technical|research|drafting|operational|reflective"
  secondary_type: "[optional]"
  domains: [domain1, domain2]
  value: "high|medium|low|skip"
trails: [trail-name-1, trail-name-2]
---
```

Then the body sections:

- `## Session Arc` with `### Started`, `### Pivots`, `### Ended`
- Object sections (include only those present):
  - `## ARTIFACT`
  - `## DECISION`
  - `## INSIGHT`
  - `## PATTERN`
  - `## OPEN_QUESTION`
  - `## REFERENCE`
  - `## NEXT_STEP`
  - `## SOLUTION`
- `## Connections` using the format: `D1 --[led_to]--> A1`
- `## Trail Updates`

## Object Type Requirements

### ARTIFACT
Capture tangible outputs (docs, specs, code, plans). Summarize the final state and note evolution if it changed.

### DECISION
Use full argumentative structure:
- Decision, Issue, Positions, Arguments, Warrant, Qualifier, Status

The **Warrant** is required: the underlying assumption that, if changed, should trigger reconsideration.

### INSIGHT
A standalone statement with source, domain, confidence, and a transcript citation.

### PATTERN
Reusable method/framework. Include steps/components. Mark scope: `universal` or `local`.

### OPEN_QUESTION
What remains unresolved, what blocks, and partial progress.

### REFERENCE
External resource/tool/person. Include relevance and URL if available.

### NEXT_STEP
Concrete action: what, why, urgency (`now | soon | someday`).

### SOLUTION
Specific fix: what was broken, what fixed it, why the fix works, and caveats.

## Quality Checks

- Frontmatter is valid YAML and matches the schema.
- Empty object sections are omitted.
- Every object has a citation back to the transcript.
- Connections reference existing IDs.
- No invented facts; unknowns are explicit.
- The body includes `## Connections` and `## Trail Updates`.
- The output stays within the transcript's actual content and does not expand into unstated designs or decisions.
