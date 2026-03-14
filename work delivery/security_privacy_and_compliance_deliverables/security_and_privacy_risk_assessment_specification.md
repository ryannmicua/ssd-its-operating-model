# Security & Privacy Risk Assessment Specification

## Purpose

The Security & Privacy Risk Assessment identifies, evaluates, and records the security and privacy risks introduced or changed by the solution, along with the controls or treatment actions needed to reduce those risks.

It exists to make risk visible before it becomes an operational surprise. A useful assessment shows what could go wrong, what assets or data are affected, how serious the impact could be, what controls are already in place, and what residual risk remains.

## When It Is Required

This artifact is required when the initiative introduces or materially changes systems, data handling, integrations, access models, hosting arrangements, or user behaviors that affect security or privacy risk.

## Intended Readers and Users

- Security / Data Protection Officer
- Business Owner / Process Owner
- Delivery Owner
- solution and infrastructure leads
- Data Steward where data sensitivity is relevant

## Intended Project Context

Use this artifact during design, before deployment, and whenever risk posture changes materially. It is most useful where the organization must decide what controls are needed and whether remaining risk is acceptable.

It should align with NIST SP 800-30 risk-assessment practice, NIST CSF 2.0, the NIST Privacy Framework, and ITIL 4 information security management thinking by framing risks, impacts, control needs, and residual exposure clearly.

## How Much Detail to Include

Include enough detail to describe the asset or process at risk, the threat or misuse scenario, the likely impact, existing or planned controls, and the residual exposure. Do not turn it into a generic policy restatement.

## Required Content or Minimum Structure

### 1. Assessment context

Must include:

- scope of the assessment
- solution or service name
- date or version
- assessment owner

This section identifies what risk surface the assessment covers.

### 2. Risk scenarios

Must include:

- threat, misuse, failure, or exposure scenarios
- assets, services, or data affected
- why the scenario matters

This section makes the risks concrete enough to assess.

### 3. Impact and severity view

Must include:

- likely organizational, operational, legal, security, or privacy impacts
- risk rating or prioritization method

This section shows how serious the risk is and why it needs attention.

### 4. Control and treatment expectations

Must include:

- controls already in place
- additional controls required
- owner for each required action or treatment

This section turns the assessment into a usable control-planning artifact.

### 5. Residual risk statement

Must include:

- remaining risk after planned controls
- whether formal residual risk acceptance is required

This section prevents silent risk acceptance.

## What to Keep Out

Keep the following out of this artifact:

- vague risk statements with no scenario or impact basis
- full control procedure text copied from standards
- hidden residual risk inside narrative paragraphs

## Relationships to Other Artifacts

This artifact should align with the Access Control & Authorization Model, Audit & Monitoring Design Summary, Compliance & Regulatory Alignment Statement, Data Governance & Impact Assessment, and Residual Risk Acceptance Record where needed.

## Ownership, Review, and Acceptance Expectations

The security lead or reviewer usually coordinates the assessment with business, delivery, privacy, and technical stakeholders.

Material risks should be reviewed by the Security / Data Protection Officer and relevant decision authorities.

## Maintenance Expectations

Update when design, access, data handling, threat exposure, hosting, or regulatory obligations change. Revisit after material incidents or control failures.

## Validation Guide

- Does the assessment explain what could go wrong and why it matters?
- Are required controls and treatment owners explicit?
- Is residual risk visible after mitigation rather than assumed away?
- Could a decision-maker understand what action or acceptance is required?

If weak, improve the scenario description, impact statement, and treatment ownership.

## Prompt Guide for Drafting the Artifact

### Starter prompt

> Draft a Security & Privacy Risk Assessment for this solution.
> Identify the main threat or misuse scenarios, the assets or data affected, the likely impact, the controls already in place or still required, and the residual risk after treatment.
> Keep it practical and decision-ready.
