# Work Delivery Framework

## Purpose

This framework governs planned work delivery initiatives, including projects, significant enhancements, and smaller governed initiatives.

It puts the Define-Decide-Deliver (DDD) Work Management Model into practice by defining the minimum decisions, documents, ownership, and controls needed to deliver work clearly, accountably, and sustainably.

## Intended Outcome

When applied consistently:

- work does not start informally
- scope and outcomes are clear before authorization
- ownership and decision rights are explicit
- delivery progress is visible through accepted outputs, not activity alone
- changes are traceable and controlled
- operational support is prepared before handover
- acceptance and closure are formal, attributable, and evidence-based

## Applicability and Scaling

This framework applies to:

- projects
- significant enhancements
- smaller planned initiatives that still require governance, coordination, and formal acceptance

To keep the framework practical:

- use the minimum viable level of detail needed for the work's size, risk, and impact
- one document may satisfy multiple outputs if the required information is explicit and traceable
- smaller initiatives may use concise versions of artifacts, but they must not skip decision points, ownership, or acceptance controls

The framework is intentionally control-light for low-complexity work and should scale up only where risk, cost, impact, or cross-team coordination require it.

## Operating Principles

1. Define before authorizing.
2. Authorize before delivering.
3. Elaborate without expanding authorized scope.
4. Measure progress by accepted deliverables and evidence.
5. Transition to operations with named ownership.
6. Keep artifacts practical, readable, and usable by both humans and AI.

## Core Roles

| Role                              | Accountable for                                                      | Practical working expectation                                                  |
| --------------------------------- | -------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| Sponsor                           | Sponsorship, priority, funding support, risk sponsorship             | Confirms why the work matters and keeps it supported                           |
| Decision Authority                | Formal go / no-go and major governance decisions                     | Approves, defers, rejects, or conditions work                                  |
| Outcome Owner                     | Intended business outcome and success measures                       | Confirms the work is solving the right problem                                 |
| Delivery Owner                    | Stage discipline, coordination, delivery control, evidence readiness | Usually leads the operating rhythm of the work                                 |
| Project Manager (if assigned)     | Delivery coordination on behalf of the Delivery Owner                | Maintains plans, status, risks, decisions, dependencies, and follow-up actions |
| Acceptance Authority              | Formal sign-off for a deliverable domain or deliverable              | Accepts based on defined acceptance focus and evidence                         |
| Support Owner / Operational Owner | Ongoing operational support and service continuity                   | Confirms readiness to run and support the solution                             |
| Subject Matter Leads              | Domain-specific content quality                                      | Draft or review specialist inputs as required                                  |

## Decision Record Minimum

The minimum standard for a decision record in Stages 1, 2, 3, and 7 is:

- decision taken
- date
- decision authority
- artifact or evidence used
- conditions or follow-up actions
- owner for each follow-up action

The decision record may be a standalone artifact or a clearly identified section in another approved record.

## AI-Assisted Delivery Rules

AI may be used to speed up drafting, summarization, traceability checks, review preparation, and revision cycles.

AI must not:

- authorize work
- approve scope changes
- assign or change accountable owners without instruction
- mark deliverables accepted
- invent evidence that does not exist

AI-generated outputs should include clear source context, stable IDs where used, and a concise change summary when materially revised.

## End-to-End Stage Summary

| Stage                               | Primary Decision                                      | Primary Owner                                    | Minimum Outcome                                                                |
| ----------------------------------- | ----------------------------------------------------- | ------------------------------------------------ | ------------------------------------------------------------------------------ |
| 1. Work Assessment                  | Proceed / Defer / Reject                              | ITS                                              | Worth defining further or not                                                  |
| 2. Work Definition                  | Ready / Not ready for authorization                   | Delivery Owner with Outcome Owner                | Decision-ready Initiative Definition Document with supporting detail as needed |
| 3. Work Authorization               | Approve / Defer / Reject / Approve with conditions    | Decision Authority                               | Work formally authorized with funding and accountability                       |
| 4. Work Definition Details          | Ready to mobilize / Rework / Return to Stage 2        | Delivery Owner with design leads                 | Detailed design and delivery-ready elaboration                                 |
| 5. Delivery Mobilization            | Ready to execute                                      | Delivery Owner                                   | Delivery rhythm, controls, and team setup in place                             |
| 6. Work Delivery                    | Continue / Escalate / Change / Prepare for acceptance | Delivery Owner                                   | Authorized deliverables produced with evidence                                 |
| 7. Acceptance, Transition & Closure | Accept / Conditionally accept / Reject / Close        | Acceptance Authorities and Sponsor as applicable | Formal acceptance, handover, and closure                                       |

## Stage 1 - Work Assessment

**Purpose:** Determine whether the request is worth further investment before entering Work Definition.

**Primary Decision:** Proceed, Defer, or Reject.

**Primary Owner:** ITS, supported by intake / portfolio governance.

### Minimum Outputs

- Work Assessment Report
- decision record
- named sponsor or sponsor candidate

### Stage Output Checklist

| Output                  | Required  | Accountable              | Practical note                                                              |
| ----------------------- | --------- | ------------------------ | --------------------------------------------------------------------------- |
| Work Assessment Report  | Yes       | ITS                      | Capture the problem, driver, value, and early concerns in one place         |
| Early stakeholder input | As needed | ITS                      | Keep notes inside the assessment report unless separate notes are necessary |
| Decision record         | Yes       | ITS / Decision Authority | Record proceed / defer / reject and any conditions                          |

### AI Use in This Stage

AI can:

- summarize intake material
- help structure the problem statement
- draft the Work Assessment Report from supplied inputs

Humans must:

- confirm sponsorship
- decide whether the work should proceed
- confirm the recorded decision

### Exit Criteria

- problem and opportunity are clearly stated
- sponsorship is confirmed or explicitly unresolved
- strategic alignment and early risks are understood
- the decision is recorded
- if proceeding, the work is ready to enter Stage 2

## Stage 2 - Work Definition

**Purpose:** Define enough to support an informed Work Authorization decision - no more, no less.

**Primary Decision:** Ready or not ready for Work Authorization.

**Primary Owner:** Delivery Owner, with Outcome Owner accountability for business intent.

### What Stage 2 Must Produce

Stage 2 stays at approval-level detail. It defines what is to be delivered, why it matters, who owns it, what domains are in scope, what acceptance will focus on, and what level of cost and risk the organization is being asked to approve.

The **Initiative Definition Document** is the primary artifact for Stage 2. Supporting artifacts may be attached or referenced only when they are needed to hold additional detail that enables a sound Work Authorization decision.

As much as possible, the Initiative Definition Document should contain enough information to support authorization without forcing readers to assemble the decision case from many separate documents.

### Initiative Definition Document Minimum Content

- problem and current-state summary
- future-state intent and expected value
- outcome statement and measurable success criteria
- in-scope and out-of-scope boundaries
- selected deliverable domains and excluded domains
- named Acceptance Authority for every in-scope domain
- delivery owner, outcome owner, sponsor, and key stakeholders
- approval-level cost, financial impact, and major risk summary
- support and operational ownership expectations
- approval-level functional scope where solution behavior is in scope

### Stage Output Checklist

| Output                                          | Required                                                                           | Accountable                                   | Practical note                                                                                       |
| ----------------------------------------------- | ---------------------------------------------------------------------------------- | --------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| Initiative Definition Document                  | Yes                                                                                | Delivery Owner                                | Primary authorization artifact; keep it decision-ready, not design-heavy                             |
| Functional Capabilities                         | When solution behavior is in scope and the ID cannot hold enough clarity concisely | Delivery Owner with business / solution leads | Approval-level only; do not turn Stage 2 into detailed design                                        |
| Deliverable domain and Acceptance Authority map | Yes                                                                                | Delivery Owner                                | Prefer to keep this inside the Initiative Definition Document                                        |
| Cost, funding, and risk summary                 | Yes                                                                                | Sponsor with Delivery Owner                   | Prefer to keep this inside the Initiative Definition Document unless detail must sit separately      |
| Support / operational impact summary            | When service or system impact exists                                               | Delivery Owner with operations                | May be summarized in the Initiative Definition Document with supporting detail referenced separately |
| Supporting authorization artifacts              | As needed                                                                          | Relevant owner                                | Use only where additional detail is necessary for a sound authorization decision                     |
| Draft Project Charter                           | Yes                                                                                | Delivery Owner                                | Prepare the decision-ready charter for Stage 3                                                       |

### AI Use in This Stage

AI can:

- draft the Initiative Definition Document from structured inputs
- suggest scope wording, outcome statements, and artifact structure
- help identify candidate deliverable domains from the Standard Deliverables Reference

AI must not:

- decide what is in or out of scope
- assign Acceptance Authorities without instruction
- approve the authorization package

### Exit Criteria

- the work is described clearly enough for a go / no-go decision
- deliverable domains are explicitly included or excluded
- Acceptance Authorities are named for each in-scope domain
- owners, cost, risks, and support implications are visible
- the package is ready for Work Authorization

## Stage 3 - Work Authorization

**Purpose:** Formally authorize delivery by committing people, time, funding, and risk to the defined work.

**Primary Decision:** Approve, Defer, Reject, or Approve with conditions.

**Primary Owner:** Decision Authority.

### Minimum Outputs

- approved or rejected Project Charter
- decision record
- funding confirmation or explicit funding condition
- any conditions, limits, or phased authorization notes

### Stage Output Checklist

| Output | Required | Accountable | Practical note |
| --- | --- | --- | --- |
| Decision record | Yes | Decision Authority | Record the actual decision and any conditions |
| Approved Project Charter | Yes for approved work | Decision Authority with Delivery Owner support | Confirms the formal commitment to proceed |
| Funding confirmation | Yes for approved work | Sponsor / Finance / Decision Authority | Must identify the source or condition of funding |
| Authorization conditions log | When applicable | Delivery Owner | Track what must be satisfied after authorization |

### AI Use in This Stage

AI can:

- prepare concise approval briefs
- summarize risks, decisions needed, and open conditions
- draft the decision record after the meeting

AI must not:

- make the authorization decision
- claim funding is approved when it is not

### Exit Criteria

- delivery is explicitly approved, deferred, or rejected
- the Project Charter status is clear
- funding and accountability are clear enough to proceed
- any conditions are recorded with owners

### Hard Rule

No delivery work may start without explicit Work Authorization.

## Stage 4 - Work Definition Details

**Purpose:** Produce the detailed design and elaboration needed to build what was authorized, without changing approved scope, outcomes, capabilities, or acceptance structure.

**Primary Decision:** Ready to mobilize, rework, or return to Stage 2.

**Primary Owner:** Delivery Owner, working with solution and domain leads.

### Minimum Outputs

- Detailed Design Package
- detailed domain-specific design or elaboration artifacts for in-scope domains
- acceptance test approach aligned to Stage 2 acceptance focus
- rollout, migration, and recovery approach as applicable

### Stage Output Checklist

| Output | Required | Accountable | Practical note |
| --- | --- | --- | --- |
| Detailed Design Package | Yes | Delivery Owner with design leads | Organize the build-ready design view |
| Solution Modules and Use Case Narratives | When solution behavior is in scope | Solution lead | Must remain traceable to approved Functional Capabilities |
| Acceptance test approach | Yes for deliverables requiring testing | Delivery Owner with testers / reviewers | Show how acceptance will be evidenced |
| Data move, rollout, and recovery approach | When applicable | Delivery Owner with operations / data leads | Make transition and recovery practical |
| Detailed operational design summary | When system impact exists | Operations / support lead | Confirm how the solution will be run and supported |

### AI Use in This Stage

AI can:

- draft detailed design sections from approved scope
- help structure modules, use cases, test outlines, and traceability tables
- identify obvious mismatches between Stage 2 scope and Stage 4 detail

AI must not:

- introduce new capabilities
- silently expand scope through design detail

### Exit Criteria

- design detail is complete enough to execute
- traceability to authorized scope is clear
- acceptance approach is defined
- no material scope expansion has been introduced
- the work is ready for Delivery Mobilization

## Stage 5 - Delivery Mobilization

**Purpose:** Prepare the team and governance rhythm to execute in a controlled, visible, and sustainable way.

**Primary Decision:** Ready to execute.

**Primary Owner:** Delivery Owner.

### Minimum Outputs

- Delivery Charter
- delivery plan or initial task breakdown
- communication plan
- change and escalation rules
- working cadence for status, risks, decisions, and acceptance readiness

### Stage Output Checklist

| Output | Required | Accountable | Practical note |
| --- | --- | --- | --- |
| Delivery Charter | Yes | Delivery Owner | Define team operating model, reporting, and controls |
| Initial delivery plan / task breakdown | Yes | Project Manager or Delivery Owner | Enough to start controlled execution |
| Communication plan | Yes | Delivery Owner | Keep key audiences informed at the right level |
| Change and escalation rules | Yes | Delivery Owner | Clarify who decides what and how issues are escalated |
| RAID / dependency log setup | Yes | Project Manager or Delivery Owner | Risks, assumptions, issues, dependencies in one maintained place |
| Acceptance tracker setup | Yes | Delivery Owner | Track domain-level readiness, evidence, and sign-off status |

### Minimum Operating Rhythm

At minimum, the delivery team should establish:

- a regular status review
- a maintained risk / issue / dependency view
- a change review path
- a decision log
- a clear path for preparing acceptance evidence

### AI Use in This Stage

AI can:

- draft plans, meeting agendas, working agreements, and status templates
- summarize open risks and dependencies from notes
- help maintain structured trackers from confirmed inputs

AI must not:

- close risks, approve changes, or assign decisions without human confirmation

### Exit Criteria

- the team knows how work will be executed and governed
- plans and trackers exist and are usable
- status, escalation, and acceptance preparation rhythms are in place
- the work is ready to begin controlled execution

## Stage 6 - Work Delivery

**Purpose:** Produce the authorized deliverables, collect evidence, manage changes visibly, and progress work toward acceptance.

**Primary Decision:** Continue as planned, escalate, change, or prepare for Stage 7 acceptance.

**Primary Owner:** Delivery Owner.

### Minimum Outputs

- in-scope deliverables
- acceptance evidence
- decision and change records
- current status, risk, and dependency reporting
- updated acceptance tracker

### Stage Output Checklist

| Output | Required | Accountable | Practical note |
| --- | --- | --- | --- |
| Deliverables for each in-scope domain | Yes | Assigned Delivery Owners | Build and validate only what was authorized or formally changed |
| Evidence linked to deliverables | Yes | Delivery Owner with domain leads | Evidence must be attributable and reviewable |
| Status reporting | Yes | Project Manager or Delivery Owner | Report progress by deliverable status and major outcomes |
| RAID / dependency log updates | Yes | Project Manager or Delivery Owner | Keep risks, issues, and dependencies current |
| Change records | When change occurs | Delivery Owner | Record scope, decision, and impact of changes |
| Acceptance tracker updates | Yes | Delivery Owner | Show what is ready, blocked, or pending sign-off |

### Minimum Control Expectations

During execution:

- progress should be reported by deliverable status, evidence status, and decision needs
- unapproved scope expansion should be treated as a governance issue
- material changes should be routed through the agreed change path
- evidence should be collected as work is completed, not reconstructed at the end
- the Delivery Owner or project manager should keep the operating picture current

### AI Use in This Stage

AI can:

- draft status reports, evidence summaries, and change summaries
- check traceability and flag missing links
- help convert meeting notes into action lists and risk summaries

AI must not:

- declare deliverables accepted
- hide unresolved risks or gaps
- substitute generated text for real evidence

### Exit Criteria

- all in-scope deliverables are produced and validated against defined acceptance focus
- evidence is complete and linked
- unresolved sign-off blockers are visible and addressed
- the work is ready for formal acceptance, transition, and closure

## Stage 7 - Acceptance, Transition & Closure

**Purpose:** Formally accept the delivered outcomes, transition responsibility, and close the work.

**Primary Decision:** Accept, conditionally accept, reject, or close.

**Primary Owner:** Acceptance Authorities for their domains, coordinated by the Delivery Owner.

### Minimum Outputs

- acceptance records for in-scope deliverables or domains
- operational handover confirmation where applicable
- closure record
- final unresolved actions list if any conditions remain
- final financial and delivery summary

### Stage Output Checklist

| Output | Required | Accountable | Practical note |
| --- | --- | --- | --- |
| Acceptance records | Yes | Acceptance Authorities | Acceptance must be explicit and attributable |
| Operational handover confirmation | When operational ownership is impacted | Support / Operational Owner | Confirm the work is supportable beyond the delivery team |
| Closure record | Yes | Delivery Owner with Sponsor / Decision Authority as applicable | Record final status, closure basis, and any follow-up obligations |
| Outstanding conditions list | When applicable | Delivery Owner | Make remaining actions visible and owned |
| Final financial / delivery summary | Yes | Delivery Owner with Sponsor | Record actual vs approved at an appropriate level |

### AI Use in This Stage

AI can:

- assemble closure packs from confirmed records
- summarize acceptance evidence and outstanding conditions
- draft closure summaries and handover notes

AI must not:

- approve acceptance
- claim transition is complete without confirmation from the receiving owner

### Exit Criteria

- all required deliverables are accepted or explicitly conditionally accepted
- operational ownership is confirmed where needed
- closure is recorded
- any remaining follow-up actions are assigned and visible

### Hard Rule

Delivered without acceptance is not complete.

## Artifact Summary by Stage

| Stage | Core Artifacts |
| --- | --- |
| Work Assessment | Work Assessment Report, decision record |
| Work Definition | Initiative Definition Document, supporting authorization artifacts as needed, Functional Capabilities (if applicable), draft Project Charter |
| Work Authorization | Decision record, approved Project Charter, funding confirmation |
| Work Definition Details | Detailed Design Package, detailed domain artifacts, acceptance test approach |
| Delivery Mobilization | Delivery Charter, communication plan, change and escalation rules, delivery plan, trackers |
| Work Delivery | Deliverables, evidence, status reports, decision and change records |
| Acceptance, Transition & Closure | Acceptance records, handover confirmation, closure record |
