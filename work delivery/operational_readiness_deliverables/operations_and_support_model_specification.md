# Operations & Support Model Specification

## Purpose and Intended Outcome

The Operations & Support Model defines who owns the live service, how support is structured, where escalation occurs, and what operating assumptions govern steady-state service.

It exists to make long-term accountability explicit and to prevent unsupported handover. A useful model shows who owns the service, who supports it, how incidents and escalations move, and what constraints or dependencies affect support.

The intended outcome is that the live service remains supportable beyond the delivery team, with clear ownership, support boundaries, escalation paths, and sustainable operating responsibilities.

## When It Is Required

This artifact is required when the initiative creates or changes a service, application, integration, or platform component that must be operated after delivery.

## Intended Readers and Users

- IT Operations / Service Owner
- Support Owner and support teams
- Delivery Owner
- Business Owner where service outcomes matter

## Intended Project Context

Use this artifact before go-live or formal handover. It is most useful where support must continue beyond the delivery team and where boundaries between teams, vendors, or service tiers must be explicit.

It should align with ITIL 4 Service Desk, Incident Management, Monitoring and Event Management, and Relationship Management practices by making service accountability, support channels, and escalation paths clear.

## How Much Detail to Include

Include enough detail to show ownership, support boundaries, escalation paths, monitoring expectations, and transition assumptions. Do not turn it into a full runbook.

## Required Content or Minimum Structure

### 1. Service ownership

Must include:

- named Service Owner
- named Support Owner
- short statement of what each is accountable for

This section shows who is responsible for the live service.

### 2. Support structure

Must include:

- support tiers or equivalent responsibility split
- internal and external support boundaries
- vendor or partner dependencies where relevant

This section defines how support is organized.

### 3. Escalation and response model

Must include:

- escalation paths
- escalation triggers or conditions
- incident or support response expectations where relevant

This section shows how issues move when they cannot be resolved at the first point of contact.

### 4. Monitoring and operating assumptions

Must include:

- monitoring expectations
- support coverage or service hours where relevant
- hypercare, transition, and steady-state assumptions
- operational constraints or risks that affect supportability

This section connects support ownership to the real operating model.

### 5. Template guide

Recommended summary table:

| Area | Owner | Boundary or responsibility | Escalation path | Notes |
| --- | --- | --- | --- | --- |

Use short entries and point to detailed procedures elsewhere.

## What to Keep Out

Keep the following out of this artifact:

- full troubleshooting procedures
- detailed deployment steps
- deep technical design
- project task assignments

## Relationships to Other Artifacts

This artifact should align with the Technical Design Document, System Administration Guide, Backup, Restore & Recovery Plan, Operational Readiness Confirmation Record, and monitoring or audit designs where applicable.

## Ownership, Review, and Acceptance Expectations

The Service Owner or operational lead usually owns this artifact with support from the Delivery Owner and support leads.

It should be reviewed as part of operational readiness and handover.

## Maintenance Expectations

Keep it current when ownership, support coverage, escalation, vendor dependencies, or operating assumptions change.

## Validation Guide

- Are service and support ownership explicit?
- Can a reviewer see who supports what and when escalation happens?
- Are transition assumptions and known operational constraints visible?
- Does the artifact define the operating model without drifting into runbook detail?

If weak, clarify the responsibility split and make escalation routes easier to follow.

## Prompt Guide for Drafting the Artifact

### Starter prompt

> Draft an Operations & Support Model for this solution.
> Define service ownership, support ownership, support tiers or boundaries, escalation paths, monitoring expectations, support coverage, and the transition or steady-state assumptions that matter after go-live.
