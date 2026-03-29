# Problem & Outcome Validation Brief Specification

## 1. What This Artifact Is For

The **Problem & Outcome Validation Brief** is a lightweight document used to confirm that the team is solving the right problem, for the right reasons, before turning the work into formal scope and design artifacts.

It answers a set of foundational questions:

* **What problem does this initiative need to solve?**
* **Who experiences the problem and why does it matter?**
* **What outcomes and success measures define "done"?**
* **What assumptions, exclusions or dependencies shape how the problem can be solved?**

By explicitly recording these items up front, the brief reduces the risk of designing a well-governed solution to the wrong problem. It provides a reference point for later discussions about scope, trade-offs, and acceptance.

## 2. When to Use It

Use this artifact early in **Work Definition (Stage 2)** (Work Definition) after the initiative has passed work assessment but before Functional Capabilities are drafted. It is especially useful when:

* The problem statement is vague or contested.
* There are multiple stakeholders with different interpretations of the desired outcome.
* The initiative is new, materially changed, or has high uncertainty.
* There is a risk that assumptions will quietly drive design decisions later.

For very small initiatives or urgent fixes, these items may be recorded directly in the Work Brief or Initiative Definition Document. For anything with cross-team impact or material investment, a separate brief improves clarity and traceability.

## 3. Stage Fit and Handoffs

* **Work Definition (Stage 2):** Draft and review the brief before writing Functional Capabilities. Use it to align stakeholders on problem, outcome, assumptions and success measures.
* **Work Authorization (Stage 3):** Treat this brief as part of the authorization basis when the Initiative Definition Document is light or absent.
* **Work Definition Details (Stage 4):** Refer to the brief when structuring modules, drafting use cases and defining quality attributes. It should remain unchanged unless the initiative's purpose is formally revised through change control.

Upstream sources:

* Work Brief or Initiative Definition Document

Downstream artifacts:

* [Functional Capabilities Specification](functional_capabilities_specification.md)
* [Non-Functional Requirements Specification](non_functional_requirements_specification.md)
* [Solution Modules Specification](solution_modules_specification.md)

## 4. Before You Start

Make sure you have access to:

* The approved initiative objective and rationale.
* Any preliminary problem statements from assessments or stakeholder interviews.
* Known scope boundaries, exclusions and constraints.
* Initial assumptions or dependencies acknowledged by sponsors or domain experts.
* A named owner and reviewer for the brief.

If any of these are missing, draft the brief as a working document and label it as such until the gaps are resolved.

## 5. How to Draft It

1. **Summarize the problem.** Write one or two paragraphs that describe the core problem the solution must address. Explain who experiences the problem, how it manifests, and why it matters.
2. **Identify the affected user groups or stakeholders.** List the roles, teams or personas for whom the problem exists. Note any special conditions or contexts that influence how they experience the problem.
3. **Describe intended outcomes.** State the outcomes that must be achieved to consider the problem solved. Outcomes should reflect the benefits or business results, not proposed solutions.
4. **Define success measures.** List measurable indicators or criteria that will be used to judge whether the outcomes have been achieved. Include target values or qualitative thresholds where possible.
5. **Record assumptions.** Note assumptions that underpin the problem definition or outcomes. For example, assumed process changes, resource availability, timing constraints, or stakeholder commitments.
6. **Record exclusions and boundaries.** Clarify what is explicitly out of scope. Identify related problems that will not be addressed by this initiative.
7. **Identify dependencies.** List any external factors, systems, or parallel initiatives that materially affect whether the outcomes can be achieved.
8. **Name owners and reviewers.** Identify who is responsible for maintaining the brief and who must review and validate its content.

## 6. Minimum Structure

### 6.1. Document header

Include the initiative name, version, status, owner, reviewer, and date. Summarize the purpose of the brief in one sentence.

### 6.2. Problem statement

Describe the problem, who it affects, and why it matters.

### 6.3. Intended outcomes

List the outcomes the initiative intends to achieve. Each outcome should be a business result or benefit, not a solution feature.

### 6.4. Success measures

Define how success will be measured. Include metrics, qualitative indicators, target values or ranges, and time frames where relevant.

### 6.5. Assumptions and dependencies

List the key assumptions, known dependencies, and conditions that must hold true for the outcomes to be achieved.

### 6.6. Exclusions and boundaries

Describe what is deliberately out of scope or will not be addressed by this initiative.

### 6.7. Roles and ownership

Identify the owner of the brief, the reviewers, and any accountable parties for problem and outcome definition. Record who validated the brief (Outcome Owner, Sponsor, or delegate), the date of validation, and any comments. This ensures the brief is treated as an authoritative baseline rather than an informal note.

## 7. Writing Rules

Keep the brief:

- decision-focused and concise — one or two pages is typical; expand only when genuine complexity requires it
- grounded in the problem, not the solution — write about what is broken or missing, not what will be built to fix it
- measurable where outcomes allow — write `reduce processing time by 30%` not `improve processing time`
- explicit about stakeholder contradictions — if different stakeholders describe the problem differently, name the contradiction and note how it was resolved or left open

Keep the following out of the brief:

- solution scope, features, or design detail (those belong in the Functional Capabilities Specification)
- delivery timelines or resource estimates (those belong in the Initiative Definition Document or Work Brief)

Where assumptions or exclusions materially affect what outcomes are achievable, state them explicitly rather than embedding them in the narrative.

## 8. Traceability and Ownership Minimum

The brief should link upstream to the Work Brief or Initiative Definition Document and downstream to the Functional Capabilities Specification.

Minimum ownership expectations:

- Outcome Owner or delegate confirms the problem statement and intended outcomes are accurate and reflect the actual business need.
- Delivery Owner confirms the brief is consistent with the approved initiative objective.
- Record who endorsed the brief, in what capacity, and at what date — this establishes the brief as an authoritative baseline rather than an informal note.

## 9. Done When

This artifact is ready when:

- the problem statement describes the underlying problem, not a proposed solution
- intended outcomes reflect business results, not features or technical goals
- success measures are defined and quantified where possible
- no solution scope or design detail has been introduced
- any contradictions between stakeholders' views of the problem have been surfaced and noted
- the brief is endorsed by the Outcome Owner or delegate

## 10. What Comes Next

After this brief is endorsed:

1. use the problem statement and outcomes as the scope input when drafting the [Functional Capabilities Specification](functional_capabilities_specification.md)
2. reference the brief as part of the authorization basis in the [Initiative Definition Document Specification](../governance_and_control_deliverables/initiative_definition_document_specification.md) if it is not yet baselined
3. use the outcome statements and success measures to inform quality targets in the [Non-Functional Requirements Specification](non_functional_requirements_specification.md)

## 11. Prompt Guide

Starter prompt:

```text
Draft a Problem & Outcome Validation Brief for Work Definition (Stage 2).
Problem: [describe the problem to be solved]
Affected users: [list key roles or personas]
Outcomes: [list desired outcomes]
Success measures: [list how success will be measured]
Assumptions: [list assumptions]
Exclusions: [list what is out of scope]
Dependencies: [list dependencies]

Keep it concise and business-focused, and avoid solution details.
```

Validation prompt:

```text
Check whether the Problem & Outcome Validation Brief clearly states the problem, intended outcomes, success measures, assumptions, exclusions and dependencies, and whether it introduces solution detail.
```
