# Solution Design Process

## Related Documents

- [Work Delivery Framework](work_delivery_framework.md)
- [Standard Deliverables Guide](standard_deliverables_guide.md)
- [AI-Assisted Authoring Standard](ai_assisted_authoring_standard.md)
- [Solution Design Process Streamlining Recommendations](solution_design_process_streamlining_recommendations.md)

## 1. Purpose

Define the practical workflow for producing, structuring, evidencing, and preparing Solution Deliverables for acceptance within the Work Delivery Framework.

This process is designed to help:

- human delivery teams work with consistent structure and traceability
- project managers and Delivery Owners keep solution documentation controlled and reviewable
- AI accelerate drafting and revision without weakening governance

## 2. Governance Boundary

This process operates inside the Work Delivery Framework.

It:

- starts in Stage 2 (Work Definition)
- elaborates in Stage 4 (Work Definition Details)
- is executed and evidenced in Stage 6 (Work Delivery)
- supports formal acceptance in Stage 7 (Acceptance, Transition & Closure)

It does not:

- authorize work
- create or change Acceptance Authority
- expand approved scope
- replace stage-gated controls in the Work Delivery Framework

The authoritative scope baseline is established through the approved Initiative Definition Document, any referenced supporting authorization artifacts, and the Work Authorization decision.

## 3. Core Roles in This Process

| Role | Primary responsibility in this process |
| --- | --- |
| Delivery Owner | Ensures documentation is produced, controlled, and aligned to stage gates |
| Project Manager (if assigned) | Coordinates drafting, review cycles, traceability status, and follow-up actions |
| Solution Lead / Analyst | Owns the quality of Functional Capabilities, Solution Modules, and Use Cases |
| Reviewer / SME | Confirms business, operational, or technical correctness |
| Acceptance Authority | Accepts solution outputs based on defined acceptance focus and evidence |

## 4. Definition of Ready to Generate

Before AI or human drafting begins for a governed solution artifact, the following should be available:

- a clear objective for the artifact
- the current scope boundaries
- the relevant stage and expected depth
- the named owner and reviewer
- the required IDs or ID pattern, where traceability applies
- the acceptance focus or validation intent

If these inputs are missing, the artifact may still be drafted as a working draft, but it should not be treated as controlled or decision-ready.

## 5. Process Overview

| Step | Work Delivery Framework Stage | Main Outcome |
| --- | --- | --- |
| 1. Define Authorized Scope | Stage 2 - Work Definition | Approval-level Functional Capabilities and solution scope baseline |
| 2. Structure Authorized Scope | Stage 4 - Work Definition Details | Solution Modules and Use Case Narratives that elaborate approved scope |
| 3. Implement and Evidence | Stage 6 - Work Delivery | Implemented solution plus traceable evidence |
| 4. Prepare for Formal Acceptance | Stage 7 - Acceptance, Transition & Closure | Acceptance-ready documentation and evidence package |

Reversing or blending these steps creates governance risk and usually causes rework.

## 6. Step 1 - Define Authorized Scope

### Primary Artifact

- Functional Capabilities

### Purpose

Define the approval-level functional scope for Solution Deliverables.

### Must Include

- outcome statement and measurable success indicators
- explicit in-scope and out-of-scope boundaries
- atomic Functional Capability statements
- stable Capability IDs (`FC-###`)
- reference to the named Acceptance Authority from Stage 2
- version metadata

### Must Not Include

- detailed workflows or sequencing
- business rule detail that belongs in use cases
- technical design or architecture
- test scripts or acceptance evidence
- task plans or implementation detail

### Human Validation Gate

Before Step 1 is treated as complete, confirm:

- scope check: no capability contradicts or exceeds agreed Stage 2 boundaries
- ownership check: owner and reviewer are named
- readability check: the artifact is understandable to business and delivery readers

### AI Use in Step 1

AI can:

- draft capability statements from approved scope inputs
- normalize wording and structure
- suggest missing cross-references or duplicated capability statements

AI must not:

- invent new capability intent
- convert approval-level scope into detailed design

## 7. Step 2 - Structure Authorized Scope

### Primary Artifacts

- Solution Modules
- Use Case Narratives

### Purpose

Organize approved Capability IDs into coherent, testable behavior without expanding scope.

### Solution Modules Must:

- group approved Capability IDs into bounded solution segments
- reference included Capability IDs explicitly
- remain fully traceable to Functional Capabilities
- avoid introducing new scope

Each Solution Module should include:

- Solution Module ID (`SM-###`)
- name and short description
- included Capability IDs (`FC-###`)
- associated user roles
- contained Use Case IDs (`UC-###`)

### Each Use Case Must:

1. reference a Solution Module ID
2. reference one or more Capability IDs
3. identify primary actor(s)
4. describe the triggering event
5. define the intended outcome
6. describe the high-level workflow
7. define business rules and validations
8. define access expectations
9. define auditability requirements where relevant
10. define acceptance criteria

### Human Validation Gate

Before Step 2 is treated as complete, confirm:

- scope check: every module and use case maps back to approved Capability IDs
- traceability check: no behavior exists without an `FC-###` reference
- ownership check: owner and reviewer are named for the produced artifacts

### AI Use in Step 2

AI can:

- draft module structures and use case narratives from approved Functional Capabilities
- help identify missing links between modules, actors, and capabilities
- suggest clearer behavioral wording

AI must not:

- add behavior that requires new capability approval
- hide missing traceability

## 8. Step 3 - Implement and Evidence

### Primary Output

- Delivery and Operations Pack

### Purpose

Implement the approved capabilities and assemble the evidence needed for validation, acceptance, and operational continuity.

### Should Include As Applicable

**Build and Design**

- execution-level design needed to implement approved Solution Modules
- integration definitions
- configuration and data structure details

**Test and Evidence**

- acceptance test plan mapped to Capability IDs
- test results traceable to Capability, Module, and Use Case IDs where appropriate
- defect log or issue record where used

**Deploy and Recover**

- deployment documentation
- migration or cutover approach
- rollback or recovery approach

**Operate and Support**

- runbooks or SOPs aligned to the delivered solution
- monitoring expectations
- operational ownership confirmation

### Traceability Rule

`Capability ID -> Solution Module ID -> Use Case ID -> Test Evidence -> Deployment Evidence -> Acceptance`

### Human Validation Gate

Before Step 3 is treated as complete, confirm:

- evidence check: evidence exists for what is claimed as delivered
- traceability check: evidence can be followed back to approved scope
- operational check: support and handover artifacts exist where required

### AI Use in Step 3

AI can:

- help assemble evidence summaries and traceability views
- draft runbooks, test summaries, and deployment notes from confirmed inputs
- flag missing references or undocumented handoff gaps

AI must not:

- invent test results, deployment outcomes, or operational confirmations

## 9. Step 4 - Prepare for Formal Acceptance

### Purpose

Prepare a clean, reviewable acceptance package so the Acceptance Authority can make an explicit, evidence-based decision.

### Acceptance-Ready Means

- all in-scope Capability IDs are implemented or explicitly dispositioned
- Solution Modules and Use Cases are complete enough to support validation
- evidence is complete, attributable, and traceable
- operational handover artifacts are present where required
- open issues, conditions, or exceptions are visible

### Human Validation Gate

Before Step 4 is treated as complete, confirm:

- acceptance check: the package addresses the Stage 2 acceptance focus
- completeness check: required evidence and references are present
- ownership check: the Acceptance Authority knows what they are being asked to approve

### AI Use in Step 4

AI can:

- assemble acceptance summaries
- generate traceability tables and evidence indexes
- draft the final review pack from confirmed records

AI must not:

- approve acceptance
- represent unresolved gaps as closed

## 10. AI-Assisted Authoring Workflow

Use this workflow whenever AI is helping produce or revise a governed solution artifact:

1. **Initiate**
   - Human provides objective, stage, scope boundaries, required structure, IDs, and review criteria.
2. **Generate**
   - AI produces a draft that stays within the supplied scope and structure.
3. **Review**
   - Owner or reviewer checks clarity, scope alignment, and traceability.
4. **Revise**
   - AI updates the draft using explicit reviewer comments.
5. **Validate**
   - Human or AI checks the artifact against the relevant validation gate and traceability rules.
6. **Approve**
   - The named owner accepts the draft as ready for use; the Acceptance Authority signs off only where formal acceptance is required.
7. **Record**
   - Save the final version, change summary, and linked evidence or decision references.

## 11. Codex Review Loop

For practical AI-assisted reviews in Codex:

1. Reviewer comments directly on the draft.
2. Revision request states exactly what must change and what must not change.
3. AI revises the document.
4. AI provides a short change summary.
5. Owner confirms whether the revision is accepted, needs more work, or requires governance review.

This keeps revision cycles fast while preserving accountability.

## 12. Prompting Standard for Solution Artifacts

When prompting AI, use this order:

1. objective and artifact type
2. stage and required depth
3. in-scope and out-of-scope boundaries
4. required IDs and references
5. expected structure or template
6. review criteria

Example prompt skeleton:

```text
Draft a [artifact type] for Stage [stage].
Objective: [what this artifact must achieve]
In scope: [items]
Out of scope: [items]
Required IDs and references: [IDs]
Required structure: [sections]
Review criteria: [clarity, traceability, no new scope, etc.]
```

## 13. Identification and Traceability Standards

### Capability ID

- format: `FC-###`
- stable once assigned
- never renumbered
- retired IDs are not reused

### Solution Module ID

- format: `SM-###`
- identifies a stable grouping of Capability IDs

### Use Case ID

- format: `UC-###`
- must reference a Solution Module ID and one or more Capability IDs

### Evidence IDs (recommended)

- `TE-###` for test evidence
- `DE-###` for deployment evidence

Stable IDs preserve traceability from approved scope through delivery and acceptance.

## 14. Governance Health Indicators

### Positive Signals

- Functional Capabilities remain stable after authorization
- Solution Modules organize scope without redefining it
- use cases are behaviorally clear and traceable
- evidence is linked and reviewable
- acceptance decisions reference documented outcomes and evidence

### Risk Signals

- capability renumbering or duplication
- adding new behavior through modules or use cases without scope review
- undocumented design or evidence gaps
- acceptance attempted before traceability is ready
- documentation created after the fact instead of guiding delivery
