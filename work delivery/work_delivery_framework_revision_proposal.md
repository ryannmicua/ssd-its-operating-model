# Work Delivery Framework Revision Proposal

## 1. Purpose

This proposal recommends targeted revisions to the Work Delivery Framework and related artifacts so that:

- Stage 2 is clearly understood as the point where the initiative is defined enough to support a sound authorization decision
- required deliverables are selected explicitly during Stage 2, rather than only selecting deliverable domains
- Stage 4 is clearly understood as post-authorization elaboration of deliverables and solution design needed for delivery
- the Delivery Charter is explicitly recognized in the standard deliverables set as a governance deliverable
- the framework becomes easier for both human practitioners and AI agents to apply consistently without unnecessary inference

## 2. Proposed Intent Clarifications

### 2.1. Stage 2 - Work Definition

Stage 2 should be positioned as the stage where the initiative is defined enough for a sound decision to commit resources, funding, ownership, and risk.

At this stage, the team should not stop at selecting deliverable domains only. The team should identify the actual deliverables required for the initiative at authorization level.

Deliverable domains should be treated mainly as a way to organize deliverables. They are useful as a classification and review structure, but they should not replace explicit visibility of the actual deliverables the initiative is expected to produce.

Stage 2 should make visible:

- which deliverables are required
- who owns each required deliverable
- who can accept each required deliverable
- what matters for acceptance at a practical approval level

This keeps the authorization decision grounded in an explicit delivery obligation rather than in high-level domain selection alone.

It is not necessary to document excluded or deferred deliverables. The key requirement is that the deliverables needed to understand the initiative and authorize it are visible enough to support a sound decision.

### 2.2. Stage 4 - Work Definition Details

Stage 4 should be positioned as post-authorization elaboration.

Its purpose is not to redefine the initiative, but to elaborate the authorized initiative into delivery-ready detail. This may include:

- expanding the detail of deliverables already identified in Stage 2
- producing additional definition deliverables not needed for authorization, but needed for controlled delivery
- fleshing out the solution design and related delivery-ready details
- preserving traceability back to the authorized intent, scope, ownership, and acceptance structure

This makes Stage 4 the point where definition becomes executable without allowing silent scope expansion.

## 3. Proposed Revisions to work_delivery_framework.md

### 3.1. Revise Stage 2 framing

Revise the Stage 2 purpose and supporting language so it consistently refers to selecting and defining required deliverables, not only deliverable domains.

Recommended direction:

- keep deliverable domains as a selection aid
- clarify that deliverable domains are mainly an organizing structure for deliverables
- make the Initiative Definition Document responsible for identifying the actual required deliverables for the initiative
- make ownership and Acceptance Authority explicit at the deliverable level where needed

### 3.2. Revise Stage 2 minimum content

The current Stage 2 minimum content should shift from:

- selected deliverable domains and excluded domains

Toward wording such as:

- required deliverables for the initiative, with any relevant grouping by deliverable domain
- named Acceptance Authority for each required deliverable or clearly defined deliverable grouping

This change better reflects the intended authorization question: "What are we committing to produce?"

It should also allow the Initiative Definition Document to list deliverables that are not needed for authorization but are expected to be needed later for delivery. In Stage 2, these should be listed at a visibility level only, so the likely effort and delivery footprint are visible without forcing premature elaboration.

### 3.3. Revise Stage 2 output checklist

Update the Stage 2 checklist so it reflects actual deliverable selection and readiness for authorization.

Recommended changes:

- rename `Deliverable domain and Acceptance Authority map`
  - to `Required deliverables and Acceptance Authority map`
- clarify that the map may still use domains as organizing structure, but must identify the actual required deliverables
- allow the map to identify additional expected deliverables that are not yet elaborated because they are not needed for authorization
- add a required `Stage 2 readiness decision record`
  - decision: ready or not ready for authorization
  - authority or accountable role confirming readiness
  - basis and follow-up actions

This closes the current ambiguity around whether Stage 2 ends with a recorded readiness decision.

### 3.4. Revise Stage 2 exit criteria

Recommended revised intent for Stage 2 exit criteria:

- the initiative is defined clearly enough for a go / no-go authorization decision
- required deliverables are explicitly identified at authorization level
- Acceptance Authorities are named for each required deliverable or deliverable grouping
- additional expected deliverables not needed for authorization may be listed at summary level so likely effort remains visible
- owners, costs, major risks, and support implications are visible
- the readiness decision is recorded
- the package is ready for Work Authorization

### 3.5. Revise Stage 4 purpose

Revise Stage 4 wording so it clearly says that the stage elaborates the authorized initiative into delivery-ready detail.

Recommended direction:

Stage 4 produces the detailed elaboration needed to deliver what was authorized. This may involve:

- adding further detail to deliverables already defined in Stage 2
- producing additional definition deliverables needed for delivery but not required for authorization
- completing solution and operational design detail needed to build, test, transition, and accept the work

This wording should still preserve the control rule that Stage 4 must not materially expand scope or alter acceptance structure without returning to governance.

### 3.6. Revise Stage 4 minimum outputs

The Stage 4 minimum outputs should be reframed around elaboration of authorized deliverables, for example:

- elaborated versions of required Stage 2 deliverables where further detail is needed
- additional definition deliverables required for controlled delivery
- detailed solution and domain-specific design artifacts for in-scope work
- acceptance test approach aligned to Stage 2 acceptance expectations
- rollout, migration, transition, and recovery approach as applicable

This makes Stage 4 more clearly connected to the authorized baseline.

It also clarifies the division of labor between stages:

- Stage 2 makes the likely delivery footprint visible
- Stage 4 provides the deeper elaboration needed to execute it

### 3.7. Revise Stage 4 output checklist

The checklist should better distinguish:

- elaboration of already-authorized deliverables
- new delivery-definition artifacts needed after authorization
- solution design detail
- operational readiness detail

Recommended direction:

- replace `Detailed Design Package` as a mandatory umbrella term unless it is separately defined as an authoritative artifact
- instead describe the required outcome as a delivery-ready elaboration set made up of the relevant detailed artifacts
- keep solution modules, use cases, acceptance test approach, rollout / recovery, and operational detail where applicable

This reduces the current mismatch between the framework and the active deliverable specification set.

### 3.8. Add framework-wide AI recovery rules

The framework already states what AI must not do. It should also state what AI must do when essential control inputs are missing.

Recommended addition:

If an AI agent is asked to draft or revise a governed artifact and any of the following are missing, unclear, or contradictory:

- approved scope boundary
- required deliverable identity
- named owner or Acceptance Authority
- decision basis
- evidence basis
- status of authorization

the AI should:

- label the output as a working draft
- state the missing control inputs explicitly
- avoid presenting assumptions as approved facts
- avoid marking status as authorized, accepted, or complete
- route the matter back to the Delivery Owner or named human owner for resolution

This would make the framework safer as a governing reference for AI agents across all artifact types, not only solution artifacts.

## 4. Proposed Revisions to standard_deliverables_guide.md

### 4.1. Add Delivery Charter under Governance and Control Deliverables

Add `Delivery Charter` to the Governance & Control Deliverables section.

Recommended revised list:

- Initiative Definition Document
- Project Charter
- Delivery Charter
- Decision Record Log
- Formal Acceptance & Closure Record

### 4.2. Add purpose statement for Delivery Charter

Recommended positioning:

The Delivery Charter defines how the authorized initiative will be executed and governed during delivery. It should make the working delivery model visible, including delivery coordination, reporting rhythm, escalation path, change path, and control expectations for execution.

This keeps the Delivery Charter clearly separate from:

- the Initiative Definition Document, which defines what is being authorized
- the Project Charter, which records formal authorization and commitment
- delivery plans and trackers, which manage detailed execution activity

### 4.3. Add stage alignment for Delivery Charter

In the Standard Deliverables Guide, clarify that the Delivery Charter is primarily used in:

- Stage 5 - Delivery Mobilization

and may be prepared in draft form earlier if useful, but becomes operationally important once the initiative is authorized and preparing to execute.

## 5. Practical Effect on Coherence

If these revisions are made, the document set becomes more coherent in the following ways:

- the Work Delivery Framework will align more closely with the real authorization question asked in Stage 2
- Stage 4 will more clearly bridge authorization and controlled execution
- the Standard Deliverables Guide will explicitly support a framework artifact that is already treated as mandatory in Stage 5
- human practitioners will need less interpretation to know what must exist when
- AI agents will have clearer signals about intent, artifact maturity, and when to escalate instead of guessing

## 6. Recommended Editing Priorities

### Priority 1

Revise Stage 2 in the Work Delivery Framework so it refers to required deliverables, excluded or deferred deliverables, and a recorded readiness decision.

### Priority 2

Revise Stage 4 in the Work Delivery Framework so it clearly describes post-authorization elaboration of deliverables and solution design needed for delivery.

### Priority 3

Update the Standard Deliverables Guide to add Delivery Charter under Governance & Control Deliverables and define its purpose and stage use.

### Priority 4

Add framework-wide AI recovery rules so the framework is safer and more reliable as an operational reference for both humans and AI agents.

## 7. Overall Recommendation

Proceed with a focused revision rather than a structural rewrite.

The framework is already strong in its control intent, stage discipline, and governance logic. The main need is to sharpen the wording so that:

- Stage 2 authorizes against explicit required deliverables
- Stage 4 elaborates the authorized initiative into delivery-ready definition
- Delivery Charter is formally anchored in the standard deliverables structure
- AI agents have not only prohibitions, but also clear recovery behavior when control inputs are insufficient

These revisions should improve practical applicability, adoption, and reliability without changing the core governance model.
