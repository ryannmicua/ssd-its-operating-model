# Delivery Roadmap Specification

## 1. What This Artifact Is For

The Delivery Roadmap defines the planned path for delivering the authorized initiative from mobilization through acceptance and closure.

It makes sequencing, milestones, dependencies, and governance control points visible so delivery can be managed, tracked, and governed.

Use this artifact to:

- give delivery teams and stakeholders a shared, practical roadmap
- make dependencies and sequencing constraints explicit before execution begins
- support milestone-based governance reviews and progress visibility
- maintain a controlled update record as delivery changes

## 2. When to Use It

Use this artifact for governed initiatives where controlled mobilization, cross-team dependencies, or milestone-based governance visibility are needed.

Use it progressively across stages:

- **Stage 2:** draft a high-level roadmap — phases, key milestones, major dependencies, and key risks
- **Stage 4:** elaborate to a delivery-ready baseline — releases/waves, control checkpoints, domain deliverables, and planned acceptance points
- **Stage 5:** confirm the roadmap with the delivery team and key stakeholders before execution

The roadmap remains a controlled living document through Stages 5 and 6, updated when material delivery assumptions change.

## 3. Stage Fit and Handoffs

- Stage 2: produce the initial high-level roadmap as part of the definition baseline.
- Stage 3: use the roadmap to support authorization-level visibility and decision-making.
- Stage 4: elaborate to a delivery-ready baseline before mobilization.
- Stage 5: confirm with the delivery team; activate as the controlled execution roadmap.
- Stage 6: maintain under update discipline; reference in status reviews and governance checkpoints.
- Stage 7: reference for acceptance readiness and closure milestone confirmation.

Upstream sources:

- [Initiative Definition Document Specification](initiative_definition_document_specification.md)
- [Delivery Charter Specification](delivery_charter_specification.md)
- Project Charter (if produced separately)

Downstream artifacts:

- RAID/dependency log
- Decision Record Log
- Delivery status reports and review records
- Acceptance tracker

## 4. Before You Start

Make sure you have:

- the approved initiative definition and scope baseline
- known delivery phases or waves, even at high level
- material dependencies identified (internal and external)
- key milestones or governance checkpoints agreed with the Sponsor or Decision Authority
- named Delivery Owner and Project Manager (if assigned)

For Stage 4 elaboration:

- domain deliverable owners confirmed
- release or wave sequencing agreed with delivery leads
- dependency owners identified

If any of these are missing, treat the draft as a working draft only and state what is unresolved.

## 5. How to Draft It

Follow these steps:

1. Start with roadmap identity: initiative name, version, stage context, and owner.
2. Identify the delivery phases or waves and set target timing windows.
3. Name the key milestones per phase — observable outcomes, not activity lists.
4. Record material dependencies (internal and external) and assign dependency owners.
5. Map phases to in-scope deliverables from the authorized scope baseline.
6. Identify major roadmap risks and conditions that trigger escalation or formal update.
7. At Stage 5, add a confirmation record: who reviewed the roadmap, what was confirmed, and what remains open.
8. Review: check that no unapproved scope is implied and that all material dependencies have owners.

Progressive elaboration rule:

- At Stage 2, phases and milestones are enough. Do not force detail that is not yet known.
- At Stage 4, fill in releases/waves, checkpoint owners, and domain deliverables.
- At Stage 5 onward, add confirmed ownership, cadence dates, and update references.

## 6. Minimum Structure

### 6.1. Roadmap identity

Must include:

- initiative name
- roadmap version and date
- stage context (Stage 2, Stage 4, or Stage 5+ baseline)
- owner and preparing party

### 6.2. Delivery phases and milestones

Must include:

- named delivery phases or waves
- major milestones per phase
- target timing window (date or period)
- key governance checkpoints (for example: readiness review, acceptance review)

### 6.3. Dependencies and assumptions

Must include:

- material dependencies (internal and external)
- critical assumptions that affect sequence or timing
- dependency owner or coordinating owner where known

### 6.4. Scope and deliverable alignment

Must include:

- mapping to authorized scope baseline (for example Initiative Definition version)
- key in-scope deliverables or domains by phase
- explicit note that unapproved scope is excluded

### 6.5. Risks and change markers

Must include:

- major roadmap risks and sequencing constraints
- conditions that trigger escalation or formal roadmap update
- links to decision/change records for material revisions

### 6.6. Confirmation and communication record

Must include:

- date and method used to confirm roadmap with delivery team (Stage 5)
- confirming participants/roles
- unresolved concerns and follow-up owners

### 6.7. Template guide

Recommended fields:

| Field | What to record |
| --- | --- |
| Phase / Wave | Planned segment of delivery |
| Milestone | Observable checkpoint or outcome |
| Planned window | Date or period |
| In-scope deliverables | Relevant domain deliverables or artifacts |
| Dependency | Precondition or external input |
| Dependency owner | Owner accountable for coordination |
| Risk note | Material delivery risk affecting roadmap |
| Governance checkpoint | Review/decision point |
| Update reference | Linked decision/change record ID |

## 7. What to Keep Out

Keep the following out of this artifact:

- detailed day-to-day task assignments
- low-level technical implementation steps
- unapproved scope proposals presented as committed work
- duplicate copies of full project plans or RAID logs

## 8. Writing Rules

- Name milestones as observable outcomes, not activities. "Acceptance review complete" is better than "run testing."
- Keep timing windows realistic. Use ranges ("Q3") when precision is not yet justified.
- Do not imply committed scope that is not in the authorized baseline. If a phase contains work that is not yet authorized, label it explicitly.
- Assign dependency owners. An unowned dependency is an uncontrolled risk.
- At Stage 2, a clean phases-and-milestones view is enough. Do not force detail that will change before Stage 4.
- At Stage 4 and beyond, every domain deliverable on the roadmap should have a named owner.
- Keep risks and change markers visible, not buried in narrative.

## 9. Traceability and Ownership Minimum

The Delivery Owner is accountable for roadmap integrity and update discipline.

The Project Manager (if assigned) typically coordinates updates and publication.

Roadmap acceptance normally sits with the Delivery Owner and is reviewed with the Sponsor/Decision Authority where milestone governance requires it.

Link this artifact explicitly to:

- the Initiative Definition Document (authorized scope baseline)
- the Delivery Charter (governance controls and escalation path)
- active RAID/dependency and decision logs (change and update traceability)

## 10. Maintenance Expectations

Update the roadmap whenever material sequence, milestone, dependency, or scope-aligned delivery assumptions change.

Each material revision must include:

- what changed
- why it changed
- decision/change reference
- impact on milestones, dependencies, or acceptance timing

Do not silently update the roadmap. Every revision should be attributable and traceable.

## 11. Done When

This artifact is ready when:

- roadmap identity, version, and stage context are clear
- phases, milestones, and timing windows are visible
- material dependencies have owners
- scope alignment to the authorized baseline is explicit
- unapproved scope is excluded or clearly labelled
- major risks and escalation conditions are visible
- the roadmap has been confirmed with the delivery team (Stage 5 check)
- all prior updates are traceable through versioning and decision/change references

## 12. What Comes Next

After the roadmap baseline is confirmed:

1. activate and confirm tracker ownership using the [Delivery Charter Specification](delivery_charter_specification.md)
2. use milestones and checkpoints to structure governance reviews through Stage 6
3. maintain update discipline — every material revision requires a decision/change reference
4. carry milestone and acceptance timing into the acceptance tracker and Stage 7 closure record

## 13. Prompt Guide

Starter prompt:

```text
Draft a Delivery Roadmap for a governed initiative.
Show phases, milestones, dependencies, risks, and governance checkpoints.
Keep it aligned to authorized scope and suitable for stage-gated governance review.
```

Section prompts:

```text
Expand this Stage 2 roadmap into a Stage 4 elaborated roadmap with release sequencing, dependencies, and checkpoint visibility.
```

```text
Draft a Stage 5 confirmation note that records who reviewed the roadmap, what was confirmed, and what follow-up actions remain.
```

Validation prompts:

```text
Check whether any roadmap element implies new scope not found in the authorized baseline.
```

```text
Identify unclear dependencies, missing owners, or milestone entries that are not governance-testable.
```
