# Formal Acceptance & Closure Record Specification

## Purpose

The Formal Acceptance & Closure Record confirms that required deliverables or deliverable domains have been accepted, that the relevant authorities have signed off, and that the initiative is formally closed or conditionally closed.

It exists to prevent informal completion and to preserve a clear decision trail at the end of the initiative. A useful record shows what was accepted, what remains open, and who authorized closure.

## When It Is Required

This artifact is required when the initiative reaches final acceptance, handover, or closure.

## Intended Readers and Users

- Sponsor
- Decision Authorities
- Delivery Owner
- Acceptance Authorities
- audit and governance reviewers

## Intended Project Context

Use this artifact after the required deliverable domains have been accepted or formally dispositioned. It is most useful where final closure must be explicit, attributable, and auditable.

It should align with PMI closeout practice by linking final closure to accepted deliverables, unresolved obligations, and formal decision authority.

## How Much Detail to Include

Keep it concise and decision-focused. Include enough detail to show what has been accepted, what obligations remain, and who approved closure. Link to supporting records rather than duplicating them.

## Required Content or Minimum Structure

This artifact is usually a short record with a summary table.

### 1. Closure record identity

Must include:

- initiative name
- record version or date
- prepared by
- closure status

This section identifies the closure decision record.

### 2. Acceptance summary

Must include a summary of required deliverables or deliverable domains and their acceptance status.

Recommended columns:

| Domain or deliverable | Acceptance status | Acceptance reference | Open conditions | Owner |
| --- | --- | --- | --- | --- |

Use controlled status values such as:

- `accepted`
- `accepted with conditions`
- `not accepted`
- `closed by exception`

This table shows whether closure is actually supported by prior acceptance.

### 3. Residual obligations and transition items

Must include:

- unresolved items, transition actions, contractual obligations, or residual conditions that remain after closure
- owner for each material follow-up item

This section makes it clear what closure does and does not mean.

### 4. Closure decision

Must include:

- final closure statement
- named closing authority
- decision date
- approval reference

This section is the formal act of closure.

### 5. Template guide

Keep entries short:

- `Acceptance reference`: point to the authoritative acceptance record, not a narrative summary
- `Open conditions`: record only what still matters after closure
- `Closed by exception`: use only when formal authority has approved closure despite outstanding items

## What to Keep Out

Keep the following out of this artifact:

- full evidence packs
- detailed retrospective content unless formally required
- repeated copies of all acceptance records

## Relationships to Other Artifacts

This record should reference domain acceptance records, decision logs, operational readiness confirmation, residual risk acceptance where relevant, and final handover or contract records.

## Ownership, Review, and Acceptance Expectations

The Delivery Owner or governance lead usually prepares the record. Formal closure is normally confirmed by the Sponsor or delegated Decision Authority after relevant Acceptance Authorities have completed their part.

## Maintenance Expectations

The record is normally finalized once closure is approved. If closure is conditional, update the record or issue a superseding version once conditions are resolved.

## Validation Guide

- Does the record show clearly that required acceptance happened before closure?
- Are residual obligations or exceptions explicit?
- Is the closing decision attributable to a named authority and date?
- Does the artifact avoid becoming a full narrative history of the initiative?

If weak, improve the acceptance references, clarify the closure status, and make outstanding conditions more explicit.

## Prompt Guide for Drafting the Artifact

### Starter prompt

> Draft a Formal Acceptance & Closure Record for this initiative.
> Summarize accepted deliverables or domains, any residual obligations or exceptions, and the final closure decision with named authority and date.
> Keep it concise, attributable, and evidence-linked.

### Section prompts

> Create the acceptance summary table using the required columns and controlled status values in this specification.

> Draft the closure decision section so the authority, decision, and any exception-based closure are explicit.

### Validation prompts

> Check whether this record proves that closure is supported by prior acceptance and not just by completion of activity.

> Check whether any residual obligation is hidden in narrative text instead of being stated as an explicit follow-up item.
