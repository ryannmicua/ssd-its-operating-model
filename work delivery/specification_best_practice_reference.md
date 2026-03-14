# Specification Best Practice Reference

## Purpose

This reference captures the main external best-practice sources used to shape the deliverable specifications in this workspace.

It is not a replacement for the specifications. It exists so drafters, reviewers, and AI agents can see the governing ideas behind the specification set and apply them consistently.

## How To Use This Reference

Use this document when:

- drafting or reviewing deliverable specifications
- deciding how much governance, traceability, or control detail to require
- checking whether a specification is missing practical project, service, security, privacy, or operational expectations

Use the deliverable specification as the primary drafting guide. Use this reference to understand why certain expectations exist and where they come from.

## Core Best-Practice Themes

Across the sources below, the same practical patterns appear repeatedly:

- define purpose before structure
- make ownership and decision rights explicit
- keep scope and boundaries visible
- maintain traceability from intent to delivery to acceptance
- separate summary/control artifacts from detailed execution artifacts
- treat risk management, communications, and change as ongoing disciplines
- design documents so another person can operate, review, or maintain the outcome

## Project Management Best Practices

### PMI practice guides and standards

These sources shaped the governance, scope, decision, risk, and communication expectations in the specifications.

#### Requirements management

PMI's `Requirements Management: A Practice Guide` emphasizes that requirements work must be practical, managed through the project lifecycle, and tied to outcomes and stakeholder expectations.

How it is reflected here:

- solution scope artifacts must be stable and traceable
- downstream artifacts must not silently redefine approved scope
- validation and acceptance should trace back to approved requirements or capabilities

#### Risk management

PMI's risk management standard and practice guide reinforce that risk management is continuous, owned, and tied to project objectives.

How it is reflected here:

- risk-bearing deliverables require named owners, review points, and explicit residual risk handling
- operational, security, privacy, and adoption risks must be recorded and not assumed away
- records and confirmation artifacts must capture conditions, gaps, and follow-up actions

#### Communications and stakeholder engagement

PMI research on communications stresses that communication must be tailored to stakeholder needs and supported by standardized practices.

How it is reflected here:

- change, communication, and adoption artifacts must name audiences, messages, timing, and feedback paths
- governance artifacts must make decision basis and authority visible
- specifications should be readable by mixed audiences, not just specialists

## Specification and Requirements Engineering Best Practices

### ISO/IEC/IEEE 29148-2018

IEEE identifies this as the active international standard for systems and software requirements engineering. It emphasizes qualities of good requirements and defined information items for lifecycle use.

How it is reflected here:

- specifications favor atomic, testable, non-overlapping content
- purpose, context, and lifecycle use are made explicit
- artifacts separate requirements from design and operational execution

### IEEE 830-1998

This older IEEE recommended practice is superseded, but it remains useful as a historical reference for qualities of a good requirements specification.

How it is reflected here:

- specifications prioritize clarity, completeness, consistency, and usability
- prompt guides are designed to reduce ambiguity for both human and AI drafters

## NIST Best Practices

### NIST Cybersecurity Framework 2.0

NIST CSF 2.0, published on February 26, 2024, provides outcome-based guidance across `Govern`, `Identify`, `Protect`, `Detect`, `Respond`, and `Recover`.

How it is reflected here:

- governance specifications emphasize ownership, policy intent, decision accountability, and traceability
- security, operational readiness, and data artifacts align to risk identification, protection, monitoring, response readiness, and recovery readiness
- specifications use outcome language instead of prescribing one implementation method

### NIST SP 800-53 Rev. 5

NIST SP 800-53 Rev. 5 remains the main control-catalog reference used here for access control, auditability, planning, contingency, incident response, and risk assessment expectations.

How it is reflected here:

- access control, audit, planning, risk, and recovery content is treated as mandatory when relevant
- ownership, review, evidence, and control maintenance are made explicit

### NIST Privacy Framework

The NIST Privacy Framework provides a flexible, risk-based way to manage privacy risk through enterprise risk management.

How it is reflected here:

- privacy-related deliverables focus on data categories, sensitive processing, obligations, and accountability
- privacy is treated as a lifecycle concern, not a late-stage add-on

### NIST SP 800-63-4

NIST SP 800-63-4 was finalized in July 2025 and updates NIST's digital identity guidance.

How it is reflected here:

- identity, role, and authorization specifications must handle access deliberately
- stronger identity assurance expectations should be visible where sensitive or privileged access exists

### NIST SP 800-18

NIST SP 800-18 remains a strong planning reference for security and system plans by emphasizing that plans should describe system purpose, responsibilities, environment, and planned or implemented controls.

How it is reflected here:

- technical, operational, security, and data specifications are structured around practical context, responsibilities, environment, controls, and maintenance

## CIS Best Practices

### CIS Controls v8.1

CIS Controls v8.1, published June 24, 2024, provides prescriptive and prioritized safeguards and explicitly realigns with NIST CSF 2.0, including the `Govern` function.

How it is reflected here:

- specifications emphasize practical controls, measurable expectations, and minimum useful documentation
- record-style artifacts are kept concise and operationally actionable

### CIS Control 6: Access Control Management

CIS states that organizations should use processes and tools to create, assign, manage, and revoke access credentials and privileges, and it highlights role-based access and complete provisioning and de-provisioning as best practice.

How it is reflected here:

- access-related specifications require role boundaries, privileges, separation-of-duties notes, and lifecycle handling of access

### CIS Control 8: Audit Log Management

CIS defines audit log management around collecting, alerting, reviewing, and retaining logs that support detection, understanding, and recovery from attacks.

How it is reflected here:

- audit and monitoring specifications require traceable events, review triggers, retention awareness, and operational follow-up paths

### CIS Control 11: Data Recovery

CIS defines data recovery around maintaining practices sufficient to restore assets to a pre-incident and trusted state.

How it is reflected here:

- backup, restore, rollback, and recovery artifacts must show that recovery is realistic, owned, and validated

## ITIL 4 Best Practices

The PeopleCert ITIL 4 materials used here are certification and practice pages rather than the full licensed practice guides. They are sufficient to confirm practice intent and current terminology.

### Change Enablement

PeopleCert states that the goal of Change Enablement is to maximize successful changes by assessing risk, authorizing change, and managing the change schedule.

How it is reflected here:

- deployment, acceptance, and governance artifacts require visible authority, decision basis, and controlled change handling

### Service Configuration Management

PeopleCert states that Service Configuration Management is about providing accurate and reliable information about services and configuration items when and where needed.

How it is reflected here:

- technical and operational artifacts must identify components, dependencies, environments, and authoritative records clearly

### Monitoring and Event Management

PeopleCert describes this practice as systematically observing services and components, recording and reporting events, and responding to selected changes of state.

How it is reflected here:

- operational, audit, and support specifications require explicit monitoring expectations, event triggers, and escalation paths

### Information Security Management

PeopleCert describes the practice as protecting the information needed by the organization and using a proactive, risk-based approach.

How it is reflected here:

- security and privacy deliverables require risk framing, control decisions, roles, and review obligations

### Continual Improvement and Organizational Change Management

PeopleCert materials emphasize aligning services and practices with changing business needs and supporting effective change across the organization.

How it is reflected here:

- adoption, readiness, and maintenance expectations are treated as living responsibilities
- specifications include update triggers, not just one-time completion criteria

## Practical Drafting Rules Derived From The Research

When writing or reviewing a deliverable specification in this workspace:

1. Start with the artifact's real operating purpose.
2. State when it is required and why.
3. Name the readers, users, owners, reviewers, and Acceptance Authorities.
4. Define the minimum useful structure and explain what each major section is for.
5. Keep boundaries explicit so the artifact does not become a catch-all.
6. Require traceability to upstream decisions, scope, and downstream evidence.
7. Treat risk, privacy, security, and operational support as built-in concerns where relevant.
8. Include maintenance expectations so the artifact stays usable after initial delivery.
9. Make the specification usable for both a human drafter and an AI agent.

## Sources

- [PMI Requirements Management: A Practice Guide](https://www.pmi.org/standards/requirements-management)
- [PMI Risk Management in Portfolios, Programs, and Projects](https://www.pmi.org/standards/risk-management)
- [PMI Project communications research](https://www.pmi.org/learning/thought-leadership/pulse/essential-role-communications)
- [IEEE/ISO/IEC 29148-2018](https://standards.ieee.org/standard/29148-2018.html)
- [IEEE 830-1998](https://standards.ieee.org/standard/830-1998.html)
- [NIST Cybersecurity Framework 2.0](https://www.nist.gov/publications/nist-cybersecurity-framework-csf-20)
- [NIST CSF 2.0 Resource and Overview Guide](https://www.nist.gov/publications/nist-cybersecurity-framework-20-resource-overview-guide)
- [NIST SP 800-53 Rev. 5](https://csrc.nist.gov/pubs/sp/800/53/r5/upd1/final)
- [NIST Privacy Framework](https://www.nist.gov/privacy-framework)
- [NIST Privacy Framework Version 1.0 publication](https://www.nist.gov/publications/nist-privacy-framework-tool-improving-privacy-through-enterprise-risk-management)
- [NIST SP 800-63-4 Digital Identity Guidelines](https://csrc.nist.gov/pubs/sp/800/63/4/final)
- [NIST SP 800-18 Rev. 1](https://csrc.nist.gov/pubs/sp/800/18/r1/final)
- [CIS Controls v8.1](https://www.cisecurity.org/insights/white-papers/cis-critical-security-controls-v8-1)
- [CIS Control 6: Access Control Management](https://www.cisecurity.org/controls/access-control-management)
- [CIS Control 8: Audit Log Management](https://www.cisecurity.org/controls/audit-log-management)
- [CIS Control 11: Data Recovery](https://www.cisecurity.org/controls/data-recovery)
- [ITIL 4 Practitioner: Change Enablement](https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-practitioner-change-enablement-3794)
- [ITIL 4 Practitioner: Service Configuration Management](https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-practitioner-service-configuration-management-3800)
- [ITIL 4 Practitioner: Monitoring and Event Management](https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil4-practices-monitoring-and-event-management-3686)
- [ITIL 4 Practitioner: Information Security Management](https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-practitioner-information-security-management-3873)
- [ITIL 4 Practitioner: Continual Improvement](https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-practitioner-continual-improvement-3871)
