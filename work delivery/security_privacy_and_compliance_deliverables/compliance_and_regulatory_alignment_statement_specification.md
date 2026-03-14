# Compliance & Regulatory Alignment Statement Specification

## Purpose and Intended Outcome

The Compliance & Regulatory Alignment Statement documents how the initiative aligns with applicable internal policies, contractual obligations, regulatory requirements, and data protection expectations.

It exists to make compliance exposure visible, interpreted, and attributable before and after implementation. A useful statement shows what obligations apply, why they apply, how they are being addressed, and what gaps or dependencies remain.

The intended outcome is that applicable obligations are translated into clear accountability, visible alignment decisions, and understood gaps that can be acted on before they become audit or operational issues.

## When It Is Required

This artifact is required when the initiative is subject to internal policy, regulatory, contractual, sectoral, privacy, or audit obligations that materially affect solution design, operation, or acceptance.

## Intended Readers and Users

- Security / Data Protection Officer
- compliance and governance reviewers
- Sponsor and Business Owner
- Delivery Owner
- audit reviewers

## Intended Project Context

Use this artifact when the initiative needs a formal statement of how obligations were considered and addressed. It is most useful where multiple policy, privacy, or regulatory requirements must be interpreted into practical delivery and control actions.

It should align with NIST CSF governance outcomes and the NIST Privacy Framework by translating obligations into accountable controls, decisions, and actions.

## How Much Detail to Include

Include enough detail to identify the applicable obligation, what it means for the initiative, how it is addressed, and what remains open. Do not turn it into a legal treatise.

## Required Content or Minimum Structure

### 1. Statement context

Must include:

- initiative or solution name
- scope of the statement
- date or version
- owner

This section identifies what the alignment statement covers.

### 2. Required content for each obligation row

Each obligation row must include:

- obligation or requirement
- why it applies
- how it is addressed
- owner
- status
- gap or note

Recommended table:

| Obligation | Why it applies | How it is addressed | Owner | Status | Gap or note |
| --- | --- | --- | --- | --- | --- |

Use controlled status values where helpful, such as `addressed`, `in progress`, `gap`, or `waiver required`.

This row structure turns the statement into a usable control-mapping tool.

### 3. Open gaps and dependencies

Must include:

- unresolved gaps
- required waivers or exceptions
- dependencies that affect compliance alignment

This section makes unresolved exposure visible.

## What to Keep Out

Keep the following out of this artifact:

- full copies of policies or regulations
- unsupported legal conclusions
- hidden non-compliance in vague notes

## Relationships to Other Artifacts

This artifact should align with the Security & Privacy Risk Assessment, Data Governance & Impact Assessment, Access Control & Authorization Model, Audit & Monitoring Design Summary, and Residual Risk Acceptance Record where applicable.

## Ownership, Review, and Acceptance Expectations

The compliance lead, security lead, or governance reviewer usually coordinates this artifact with business and legal or privacy input where needed.

Formal review should be completed by the relevant compliance or protection authority.

## Maintenance Expectations

Update when obligations change, solution scope changes, or compliance gaps are discovered or resolved.

## Validation Guide

- Does the statement show clearly what obligations apply and why?
- Can a reviewer see how each obligation is being addressed?
- Are unresolved gaps, waivers, or dependencies explicit?
- Is ownership assigned for material obligations?

If weak, make the applicability reasoning clearer and tighten ownership of open actions.

## Prompt Guide for Drafting the Artifact

### Starter prompt

> Draft a Compliance & Regulatory Alignment Statement for this initiative.
> List the applicable obligations, explain briefly why each applies, state how each is being addressed, identify owners, and record any open gaps or waivers.
> Keep it practical and table-driven.
