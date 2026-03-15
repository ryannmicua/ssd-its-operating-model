# AI-Assisted Work Delivery Recommendations

## 1. Purpose

This document provides practical recommendations for operating the repository as a **human-steered, AI-assisted delivery system**.

It has been updated to align with the current repository baseline, including:

- the stage-structured [Work Delivery Framework](work_delivery_framework.md)
- the domain-based [Standard Deliverables Guide](standard_deliverables_guide.md)
- the renamed [Solution Design Process](solution_design_process.md)
- expanded Governance deliverables, including Delivery Charter and Delivery Roadmap specifications

## 2. Repository Alignment Snapshot

The current repository now provides strong structural foundations for AI-assisted delivery:

1. Work stages include output checklists and AI-use boundaries.
2. Governance and control deliverables are clearly defined, including mobilization-focused artifacts.
3. Deliverable specifications exist across domains, with an index for navigation.
4. The Solution Design Process includes validation gates, prompt structure, and traceability rules.

Remaining opportunity is to improve **consistency of daily AI usage** across teams.

## 3. Target Operating Intent

Adopt and enforce this operating model:

1. Humans define scope, ownership, constraints, and decision intent.
2. AI drafts and revises artifacts using approved specifications.
3. Humans validate scope, traceability, and accountability.
4. Named authorities approve decisions and acceptance outcomes.

AI accelerates drafting and review; it does not replace authority.

## 4. Updated Recommendations

## 4.1. Standardize prompts and review loops across all domains

Use one common prompting pattern for every governed artifact:

1. objective and artifact type
2. stage and required depth
3. in-scope / out-of-scope boundaries
4. required IDs, references, and source inputs
5. required structure/specification
6. review and acceptance criteria

Use the same review loop consistently:

- reviewer comment
- explicit revision instruction
- AI revision
- concise change summary
- owner confirmation

## 4.2. Enforce stage-aware drafting discipline

When AI drafts any artifact, it should be told:

- current stage in the Work Delivery Framework
- whether output is authorization-level, elaboration-level, or execution evidence
- what decisions this artifact is intended to support

This avoids premature detail in Stage 2 and uncontrolled scope expansion in Stage 4+.

## 4.3. Treat Delivery Roadmap as a governed, evolving artifact

Use Delivery Roadmap progression as a control rule:

- Stage 2: high-level draft for decision visibility
- Stage 4: elaborated baseline for sequencing and dependencies
- Stage 5: team-confirmed roadmap for mobilization

All material roadmap updates should reference change/decision records.

## 4.4. Use Delivery Charter as the mobilization contract

Use the Delivery Charter to explicitly communicate:

- what delivery teams are expected to do
- communication methods and cadence
- escalation and change control paths
- acceptance-readiness expectations

Where practical, use it as kickoff agenda + record.

## 4.5. Improve cross-document navigation and reuse

Continue linking framework, guide, process, and specification documents with relative links so practitioners and agents can move directly to authoritative references.

## 5. Recommended Control Rules for AI-Assisted Work

1. AI must not alter approved scope unless explicitly directed and governance-updated.
2. AI must not mark deliverables as accepted or complete without human confirmation.
3. AI outputs should include version/date context where relevant.
4. Stable IDs (for example FC/SM/UC/evidence IDs) must be preserved across revisions.
5. Material revisions should include a concise change summary.

## 6. What to Apply Now

Apply the following as default operating practice:

1. Use the repository-level [AI-Assisted Authoring Standard](ai_assisted_authoring_standard.md) for prompts and review loops.
2. Use the [Solution Design Process](solution_design_process.md) traceability and validation gates when authoring solution-domain artifacts.
3. Use the Governance specifications for [Delivery Charter](governance_and_control_deliverables/delivery_charter_specification.md) and [Delivery Roadmap](governance_and_control_deliverables/delivery_roadmap_specification.md) during mobilization planning.
4. Record decisions, roadmap changes, and acceptance readiness in linked governance artifacts.

## 7. Success Indicators

This recommendation set is working when teams can show:

- faster first drafts with fewer governance corrections
- fewer scope ambiguities at Stage 2 and Stage 4 handoff
- explicit delivery mobilization expectations via Delivery Charter
- visible sequencing and dependency control via Delivery Roadmap
- reliable traceability from authorized scope to acceptance evidence
