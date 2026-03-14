# Deployed Solution Specification

## Purpose

The Deployed Solution artifact records what approved solution behavior is actually live, where it is live, and under what operational and acceptance conditions it has been released.

It exists to make the live outcome visible and attributable. A useful Deployed Solution artifact helps reviewers confirm that the implementation aligns to approved scope, helps operations understand what has entered service, and helps acceptance authorities see what evidence supports live release.

## When It Is Required

This artifact is required when an initiative places a new or materially changed application, service, integration, automation, portal, or platform capability into production or another formally accepted live environment.

It is conditionally required for pilots, phased releases, and limited rollouts. In those cases, the deployment boundary and usage conditions must be explicit.

## Intended Readers and Users

- Business Owner / Process Owner
- Delivery Owner and implementation leads
- IT Operations / Service Owner
- support teams
- Acceptance Authorities
- audit and control reviewers where needed

## Intended Project Context

Use this artifact when the organization needs a clear record of what is live and how that live state relates to approved scope, release control, and service ownership.

It is especially useful in phased delivery, controlled go-live, or environments where release traceability matters. It should align with ITIL 4 Change Enablement, Deployment Management, and Release Management practices, which emphasize controlled change, movement into live environments, and clarity about what has been made available for use. It should also stay consistent with NIST risk and control planning expectations by showing ownership, dependencies, and live operating conditions explicitly.

## How Much Detail to Include

Include enough detail to identify the live release clearly, show what approved scope it delivers, and support operations and acceptance. Do not turn it into a design document, runbook, or full test report.

## Required Content or Minimum Structure

This artifact should normally be a short structured record supported by references to authoritative evidence.

### 1. Deployment identity

Must include:

- solution or service name
- release or deployment identifier
- environment or live instance
- deployment date
- deployment owner
- live status such as `pilot`, `limited release`, `live`, `rolled back`, or `retired`

This section identifies exactly what live state the artifact is describing.

### 2. Scope delivered

Must include:

- the approved capabilities, modules, or outcome areas delivered by this deployment
- reference to the approved Functional Capabilities Baseline and related Solution Modules
- clear note of any deferred, excluded, or phased items

This section helps a reviewer confirm what approved scope is actually represented in the live release.

### 3. Live composition and dependencies

Must include:

- major modules, components, integrations, or services now live
- critical dependencies needed for the live solution to operate
- reference to the authoritative Technical Design Document for technical detail

This section gives operations and reviewers enough context to understand what was activated without repeating the full design.

### 4. Operational activation status

Must include:

- named Service Owner and Support Owner, or reference to the authoritative Operations & Support Model
- whether monitoring, support, and recovery arrangements are in effect
- any temporary operating conditions such as hypercare, manual controls, limited support windows, or known restrictions

This section makes the operational state of the live release visible.

### 5. Validation and release evidence

Must include:

- reference to validation evidence for the delivered behavior
- reference to release or deployment evidence
- statement on whether any known behavior remains outside approved acceptance scope
- reference to the current Acceptance Record or equivalent formal decision record

This section shows the basis for trusting the live release and accepting it.

### 6. Open conditions and follow-up actions

Should include:

- accepted defects, known issues, or temporary workarounds
- remaining conditions, owners, and due dates
- rollback or containment conditions if they are still relevant

This section prevents hidden live conditions from being lost in release notes or verbal handover.

### 7. Template guide

If a table summary is used, recommended columns are:

| Area | What is live | Scope reference | Evidence reference | Status | Notes |
| --- | --- | --- | --- | --- | --- |

Use short entries. Reference detailed evidence rather than embedding it.

## What to Keep Out

Keep the following out of this artifact:

- detailed deployment procedures
- full architecture explanation
- full support procedures
- raw test scripts or large execution logs
- business case or approval justification

Reference the authoritative artifacts instead.

## Relationships to Other Artifacts

This artifact should align with the Initiative Definition Document, Functional Capabilities Baseline, Solution Modules, Use Case Narratives, Technical Design Document, Operations & Support Model, System Administration Guide, and Acceptance Record.

It may also support the Operational Readiness Confirmation Record and Formal Acceptance & Closure Record.

## Ownership, Review, and Acceptance Expectations

The implementation lead or Delivery Owner usually assembles this artifact with input from operations and business representatives.

It should be reviewed by the Service Owner, Support Owner, and Business Owner / Process Owner. Formal solution acceptance normally remains with the Business Owner / Process Owner.

## Maintenance Expectations

Update the artifact at each material live release until the solution has been fully accepted and handed into steady-state service records. If the rollout is phased, keep the live boundary and open conditions current.

## Validation Guide

- Does the artifact show clearly what is live, where, and under what status?
- Can a reviewer tell what approved scope is represented in the live release?
- Are operational ownership and any live conditions visible?
- Does the artifact reference evidence instead of duplicating full detail?
- Could another reviewer understand the release state without relying on verbal explanation?

If weak, clarify the deployment boundary, add missing scope references, and tighten the evidence links.

## Prompt Guide for Drafting the Artifact

### Starter prompt

> Draft a Deployed Solution artifact for this initiative.
> Show what approved scope is now live, where it is live, what major components and dependencies are active, who owns it operationally, what evidence supports release, and what conditions remain open.
> Keep the artifact concise and evidence-based.

### Section prompts

> Draft the scope delivered section so it shows exactly what approved capabilities or modules are represented in this release and what remains deferred.

> Draft the operational activation status section so an operations reviewer can see whether ownership, monitoring, support, and recovery arrangements are in place.

### Validation prompts

> Check whether this Deployed Solution artifact proves what is live and whether it stays within approved scope.

> Rewrite any part that duplicates design, runbook, or test-pack content that belongs elsewhere.
