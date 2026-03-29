# Delivery Charter Specification

## 1. What This Artifact Is For

The Delivery Charter formally mobilizes the delivery team after work authorization.

It defines how the team will operate, communicate, govern execution, and prepare for acceptance. It is the shared operating agreement that makes delivery expectations explicit before execution begins — and keeps delivery visible, governed, and acceptance-ready throughout.

Use this artifact to:

- confirm delivery team expectations, roles, and decision participation
- establish communication cadence, escalation paths, and governance controls
- activate the minimum Stage 5 controls before execution starts
- serve as the agenda and output record for the delivery team kickoff meeting

## 2. When to Use It

Use this artifact for governed initiatives that need controlled delivery mobilization, cross-team coordination, or explicit execution governance.

It is primarily used in Stage 5 (Delivery Mobilization). It may be drafted earlier and finalized at mobilization — but it must be active before controlled execution begins.

It is not required for small governed work items (Work Briefs) unless delivery complexity warrants it.

## 3. Stage Fit and Handoffs

- Stage 5: produce and activate this artifact to mobilize the delivery team.
- Stage 6: use this artifact as the governance reference for execution controls, escalation, and cadence.
- Stage 7: reference this artifact when confirming acceptance readiness and operational handover.

Upstream source:

- [Initiative Definition Document Specification](initiative_definition_document_specification.md)
- [Delivery Roadmap Specification](delivery_roadmap_specification.md)
- Project Charter (if produced separately)

Downstream artifacts:

- RAID/dependency log
- Decision Record Log
- Acceptance tracker
- Delivery status reports and review records

## 4. Before You Start

Make sure you have:

- confirmed work authorization (Stage 3 output)
- approved scope baseline (Initiative Definition Document or equivalent)
- identified Delivery Owner, Project Manager (if assigned), and key team leads
- known delivery team composition, even if not fully confirmed
- agreed cadence expectations for governance reviews

If any of these are missing, treat the draft as a working draft only and state what is unresolved.

## 5. How to Draft It

Follow these steps:

1. Start with charter identity: initiative name, version, stage, and owner.
2. Write a short mobilization intent statement that references the authorized scope baseline.
3. Define team operating expectations — what is expected of role leads, where decisions are made, and who holds accountability for deliverables and evidence.
4. Define communication cadence: meeting rhythm, channels, escalation path, and stakeholder reporting.
5. State the governance controls that apply during execution: change path, decision logging, issue/risk/dependency handling, and acceptance-readiness management.
6. Confirm tracker setup: who owns the RAID/dependency log, decision log, and acceptance tracker.
7. If used as a kickoff artifact, record kickoff date, participants, decisions, and open actions.
8. Review for gaps: check that each minimum Stage 5 control is active.

## 6. Minimum Structure

### 6.1. Charter identity

Must include:

- initiative name
- charter version and date
- stage context (normally Stage 5)
- owner and preparing party

### 6.2. Mobilization intent and scope guardrails

Must include:

- short statement of delivery mobilization intent
- reference to authorized scope baseline
- explicit note that scope changes require formal governance

### 6.3. Team operating expectations

Must include:

- what is expected from delivery teams
- role responsibilities and decision participation expectations
- accountability for deliverables and evidence readiness

### 6.4. Communication methods and cadence

Must include:

- operating cadence (status, planning, risk/issue, and readiness reviews)
- communication channels and expected response norms
- stakeholder communication method and frequency

### 6.5. Governance controls during execution

Must include:

- change path and escalation path
- decision logging expectations
- issue/risk/dependency handling expectations
- acceptance-readiness management expectations
- requirement to keep status visibility based on deliverables, evidence, and decision needs

### 6.6. Tracker and control setup

Must include:

- RAID and dependency log setup expectation
- decision log setup expectation
- acceptance tracker setup expectation
- owner for maintaining each control record

These controls should be practical and light, but they must be active before controlled execution begins.

### 6.7. Kickoff meeting record (where used)

If used as kickoff artifact, include:

- kickoff date and participants
- decisions made at kickoff
- open actions, owners, and due windows

### 6.8. Template guide

Recommended fields:

| Field | What to record |
| --- | --- |
| Delivery objective | Practical statement of what delivery is mobilizing to achieve |
| Team model | Roles, responsibilities, and reporting lines |
| Meeting rhythm | Recurring ceremonies and participants |
| Communication method | Channels, escalation path, and reporting expectations |
| Control rules | Change, risk, decision, and acceptance-readiness controls |
| Tracker ownership | Who maintains RAID/dependency, decision, and acceptance trackers |
| Kickoff outcomes | Confirmed decisions and follow-up actions |

## 7. What to Keep Out

Keep the following out of this artifact:

- duplicate copies of the Project Charter
- detailed backlog or task scheduling
- detailed technical design content
- unresolved scope proposals presented as agreed execution expectations

## 8. Writing Rules

- Write in plain, direct language. "The Delivery Owner is accountable for X" — not "accountability for X should be clarified."
- Keep every section actionable. If a team member cannot act on a statement, cut or rewrite it.
- Make escalation paths explicit. State who, under what conditions, and by which channel.
- Name the owners of each control record. Do not leave tracker ownership ambiguous.
- Do not repeat content from the Initiative Definition Document or Project Charter. Reference them instead.
- Keep governance controls proportionate. Light is fine — but all minimum Stage 5 controls must be active.
- Use tables and bullets over paragraphs wherever a list of expectations, roles, or cadence items is involved.

## 9. Traceability and Ownership Minimum

The Delivery Owner is accountable for producing and activating this artifact.

The Project Manager (if assigned) supports coordination and maintenance.

This artifact should be reviewed with team leads and Sponsor/governance stakeholders as needed for controlled mobilization.

Link this artifact explicitly to:

- the Initiative Definition Document (scope baseline)
- the Delivery Roadmap (sequencing and milestones)
- active tracker records (RAID/dependency, decision, acceptance)

## 10. Maintenance Expectations

Update when delivery operating expectations, communication methods, governance controls, or key roles change materially.

Keep revision history concise and attributable: state what changed, why, and when.

## 11. Done When

This artifact is ready when:

- mobilization intent and scope guardrails are stated
- team expectations, roles, and decision accountability are explicit
- communication cadence, channels, and escalation paths are defined
- minimum Stage 5 controls are active (RAID/dependency, decision, and acceptance tracking)
- tracker ownership is named
- if used for kickoff, decisions and follow-up actions are recorded
- a new team member can understand how delivery operates from this artifact alone

## 12. What Comes Next

After the charter is active:

1. confirm the sequencing and milestone baseline in the [Delivery Roadmap Specification](delivery_roadmap_specification.md)
2. activate and assign ownership of the RAID/dependency log, decision log, and acceptance tracker
3. use the governance controls defined here to manage change, decisions, risk, and issues through Stage 6
4. carry the acceptance-readiness expectations into Stage 7 closure

## 13. Prompt Guide

Starter prompt:

```text
Draft a Delivery Charter for Stage 5 mobilization.
Define delivery team expectations, communication methods, governance controls, and acceptance-readiness management.
Keep it practical and suitable for use in a kickoff meeting.
```

Section prompts:

```text
Create a team operating expectations section that clearly defines what is expected of delivery teams and role leads.
```

```text
Draft a communication and cadence section that shows meeting rhythm, channels, and escalation methods.
```

Validation prompts:

```text
Review this charter for missing accountability, unclear communication methods, or weak change/escalation controls.
```

```text
Check whether any section duplicates project planning detail that should sit in delivery plans instead.
```
