# Specification Writing Guide

## 1. Purpose

This guide explains how to write deliverable specifications for this repository. It exists to make specs practical, bounded, and usable by both human drafters and AI agents. A good spec tells someone exactly what to produce and why — it does not read like a policy manual.

## 2. Default Writing Pattern (Light)

The default pattern for all specifications is 11 sections. Use this unless there is a clear reason to do otherwise.

1. What This Artifact Is For
2. When to Use It
3. Stage Fit and Handoffs
4. Before You Start
5. How to Draft It
6. Minimum Structure
7. Writing Rules
8. Traceability and Ownership Minimum
9. Done When
10. What Comes Next
11. Prompt Guide

This is the **light pattern**. It fits most specs: functional capabilities, use cases, design artifacts, operational readiness artifacts, and decision records.

Number your headings. Keep each section focused on one job.

---

## 3. When to Use the Extended Pattern

Add extra sections only when the artifact is a baseline document, a controlled record, or carries formal approval weight.

Trigger questions — if you answer yes to any of these, consider the extended pattern:

- Does this artifact establish an approved baseline that change control will protect?
- Does it carry a named acceptance authority or formal approval signature?
- Is it expected to be maintained over multiple stages or years?
- Does it need explicit compliance, privacy, or audit traceability?

If yes, add only the sections you actually need from:

| Extra section | When to add it |
|---|---|
| **Who Uses This** | When audience shape significantly affects what to write (merges Intended Readers + Project Context) |
| **What to Keep Out** | When overlap with nearby specs is a real risk |
| **Maintenance Expectations** | Only for living documents that must stay current |
| **Review Checklist** | For complex approval artifacts where Done When is not enough |

Do not add all four sections by default. Add only what adds value.

---

## 4. Section-by-Section Guidance

Each section in the light pattern has one job. Write to that job and stop.

### 4.1 What This Artifact Is For

State what the artifact does and what problem it solves. Two to four sentences. Make it specific enough that someone can tell immediately whether they need it.

Do not repeat the spec title. Do not describe the delivery framework.

### 4.2 When to Use It

Say when the artifact is required, when it is recommended, and when it can be skipped. Name the conditions, stage, initiative type, or risk threshold that triggers it.

Be direct. Avoid "may be useful when" unless genuinely optional.

### 4.3 Stage Fit and Handoffs

Name the delivery stage(s) where this artifact is produced. Identify what it consumes from upstream and what it hands to downstream. Keep the handoff description to one short line per direction.

This section replaces the old upstream/downstream relationships section. Do not create a separate section for relationships.

### 4.4 Before You Start

List 3–6 things the drafter must have in hand before starting. Name inputs, decisions, and approvals that are preconditions. If a key input is missing, name what to do.

### 4.5 How to Draft It

Give the drafter 5–8 practical steps for producing the artifact. Write as an ordered list. Be instructive, not descriptive. Say "write X" not "X should be written."

### 4.6 Minimum Structure

List the required sections or fields the artifact must contain. For each one, give one line explaining what it must include and why it matters.

Distinguish clearly:
- **Must include** — required
- **Should include** — recommended
- **May include** — optional
- **Must not include** — out of scope

When the artifact is table-based or entry-based, define the required fields, not just the document structure.

### 4.7 Writing Rules

State 4–8 rules specific to this artifact. Cover tone, detail level, what to avoid, and what distinguishes a good draft from a weak one.

Concrete beats vague. "Keep each capability to one paragraph" is better than "be concise."

### 4.8 Traceability and Ownership Minimum

Name who owns the artifact, who reviews it, and what IDs or references must be present for the artifact to be traceable. State the minimum — do not invent a review board unless one is needed.

### 4.9 Done When

State 4–6 clear conditions that indicate the artifact is complete. Write as a checklist. Each item should be testable: a reviewer should be able to say yes or no without judgment calls.

### 4.10 What Comes Next

Name the next artifact, stage gate, or action the completed artifact feeds. One to three lines. Practical, not theoretical.

### 4.11 Prompt Guide

Provide three short prompts:

1. **Starter prompt** — to draft the artifact from scratch
2. **Section prompt** — one example for a commonly difficult section
3. **Validation prompt** — to check whether the draft is complete and bounded

Keep each prompt under 100 words. Make them specific to this artifact's purpose and audience.

---

## 5. Writing Principles

- **Write to the reader, not to the audit.** Ask: can someone draft from this without guessing?
- **Say what belongs here and what does not.** Every spec should have a clear boundary.
- **Explain the job, not just the heading.** "Required content" lists that name only headings are almost useless.
- **Prefer a short, usable spec over a long, complete-looking one.** A 40-line spec that guides a good draft beats a 200-line spec that nobody reads.
- **Required means required.** If something is genuinely optional, say so.
- **Name failure modes.** If a section is commonly overloaded or misused, warn about it.
- **Make the prompt guide specific.** Generic prompts produce generic output. Tie prompts to audience and purpose.
- **Number your sections.** Use visible numbers so reviewers and drafters can cite sections unambiguously.

---

## 6. Tone and Language

Write in plain language. Use direct sentences. Prefer "do this" over "it is recommended that practitioners consider." Prefer "must include" over "should ideally contain where applicable."

Avoid abstract labels that sound precise but give no guidance. Words like "approval-level detail," "design-level," or "strategic context" tell the drafter almost nothing. Replace them with practical statements: "enough detail for a decision-maker to approve," "enough detail to hand off to a developer."

Do not write a spec in passive voice if active voice is available. Do not pad sections to make the document look thorough. Thoroughness shows in what the drafter can produce from the spec, not in how many words the spec contains.

---

## 7. Migration Rule

When converting an existing spec to this pattern:

1. **Read what the spec is actually trying to control.** Ignore section titles — read the intent.
2. **Keep useful content.** If a section gives real guidance, keep it. If it only restates the obvious, cut it.
3. **Cut duplication.** If two sections say the same thing with different headings, merge them.
4. **Convert heavy validation to a short checklist.** Replace multi-level validation guides with a 6–8 item Done When list.
5. **Collapse upstream/downstream into Stage Fit.** One section is enough.
6. **Remove appendices** unless they contain reference material that cannot go elsewhere.
7. **Check the result against the practical test**: Can a new reader tell they need this artifact? Can an author draft from it without guessing?

If the answer to both questions is yes, the migration is done.

---

## 8. Default Skeleton

Use this as the starting structure for any new spec. Remove or rename sections only when you have a clear reason.

```
# [Artifact Name] Specification

## 1. What This Artifact Is For

## 2. When to Use It

## 3. Stage Fit and Handoffs

## 4. Before You Start

## 5. How to Draft It

## 6. Minimum Structure

## 7. Writing Rules

## 8. Traceability and Ownership Minimum

## 9. Done When

## 10. What Comes Next

## 11. Prompt Guide
```

For extended pattern, add only the sections listed in [Section 3](#3.%20When%20to%20Use%20the%20Extended%20Pattern) that are genuinely needed.

---

## 9. Prompt Guide

### Starter prompt

> Draft a specification for [artifact name] using the light pattern from the Specification Writing Guide.
>
> The artifact is used by [audience] at [stage] to [purpose].
>
> Include all 11 sections. Keep each section focused on its one job. State required content explicitly and name what must stay out. Use plain language throughout.

### Section prompt — Minimum Structure

> Write the Minimum Structure section for the [artifact name] specification.
>
> List the sections or fields the artifact must contain. For each one, give one line explaining what it must include and why it matters. Use Must / Should / May / Must not to distinguish required from optional.

### Validation prompts

> Check whether this spec passes the practical test: can a new reader tell they need this artifact? Can an author draft from it without guessing? Identify any section that gives no real guidance or that overlaps with another spec.

> Check whether the Done When section contains testable conditions. Rewrite any item that requires a judgment call rather than a clear yes/no check.

> Check whether the Prompt Guide prompts are specific to this artifact's purpose and audience, or whether they would produce the same output for any artifact. Rewrite any generic prompts.
