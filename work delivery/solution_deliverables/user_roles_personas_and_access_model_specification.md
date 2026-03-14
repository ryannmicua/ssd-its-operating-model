# User Roles, Personas & Access Model Specification

## Purpose

This artifact defines the categories of users who interact with the solution, the responsibilities and goals associated with those roles, and the access boundaries that govern what each role is allowed or expected to do.

Optional personas add practical human context where role names alone are not enough to support clear use cases, access review, training, or adoption planning.

The artifact exists to make user assumptions explicit before build and acceptance. A useful role and access model gives the project a stable actor model, a clear view of role boundaries, and a practical basis for access, behavior, and enablement decisions.

## When It Is Required

This artifact is required when the solution has multiple meaningful user groups, differentiated access, privileged actions, approval authority, or sensitive data exposure.

It is strongly recommended for any solution that depends on role boundaries, separation of duties, or privacy and audit controls.

## Intended Readers and Users

- Business Owner / Process Owner
- analysts and designers
- security and privacy reviewers
- Delivery Owner
- test, training, and change enablement leads

## Intended Project Context

Use this artifact before detailed behavior and access implementation are finalized. It is most useful where different actors have distinct responsibilities, authority, or sensitivity exposure that must stay consistent across scope, use cases, and operational controls.

It should align with NIST SP 800-53 access-control expectations, NIST SP 800-63 digital identity guidance where assurance matters, and CIS Control 6 on access control management. When personas are used, it should also support practical change and enablement work without changing formal scope.

## How Much Detail to Include

Include enough detail to make role purpose, access boundaries, and sensitive interactions understandable. Do not turn the artifact into a full identity architecture, account register, or HR organization chart.

## Required Content or Minimum Structure

This artifact should define the overall user model, the required content for each role, and optional persona content where it adds real value.

### 1. User model context

Must include:

- solution or initiative name
- short explanation of why the role and access model matters for this initiative
- reference to approved scope or behavior artifacts

This section helps readers understand how the role model should be used.

### 2. Required content for each role entry

Each role entry must include:

- role name
- role purpose or description
- primary goals
- key actions or responsibilities in the solution
- access boundary
- data sensitivity or control notes where relevant

Each role entry should include when useful:

- typical decisions made by the role
- business outcomes the role supports
- links to related capabilities or use cases

This section defines the minimum information needed for a role to be useful in drafting and review.

### 3. Role relationships and control assumptions

Must include where relevant:

- reviewer or approval chains
- separation-of-duties assumptions
- visibility rules between roles
- any role interactions that materially affect behavior or access control

This section is important whenever relationships between roles affect the correctness or control of the solution.

### 4. Role-to-solution mapping

Should include:

- mapping of roles to capabilities, modules, or use cases where that helps downstream consistency

Recommended columns:

| Role | Related capability, module, or use case | Nature of involvement | Notes |
| --- | --- | --- | --- |

This section helps keep downstream artifacts aligned to the same actor model.

### 5. Optional persona entries

If personas are used, each persona should include:

- persona name
- linked role
- real-world context
- key goals
- pain points or constraints
- enablement or support implications where useful

Personas must not add new scope or override the formal role boundary. They exist to improve clarity, not to create new requirements silently.

### 6. Access modeling cautions

Must state that the artifact:

- defines role boundaries and expectations
- does not replace the formal Access Control & Authorization Model when detailed authorization logic is required
- should not contain raw account lists or credential detail

This section keeps the artifact bounded.

## What to Keep Out

Keep the following out of this artifact:

- raw account inventories
- directory group implementation detail
- secrets or credential-handling procedures
- full identity-platform design
- training plans or campaign content

## Relationships to Other Artifacts

This artifact should align with the Functional Capabilities Baseline, Use Case Narratives, Access Control & Authorization Model, Security & Privacy Risk Assessment, Training & Enablement Materials, and Adoption Support Model.

## Ownership, Review, and Acceptance Expectations

The artifact is usually authored by analysts or solution leads with business and security input.

It should be reviewed by the Business Owner / Process Owner, Delivery Owner, and Security / Data Protection Officer where relevant. Change and training leads should review persona content where it affects adoption planning.

## Maintenance Expectations

Update when role responsibilities, approval boundaries, privileged actions, or sensitivity assumptions change materially. Keep persona content current only while it remains useful and representative.

## Validation Guide

- Are the role entries distinct and practically useful?
- Are access boundaries and sensitive interactions explicit where needed?
- Are role relationships captured where they materially affect behavior or control?
- If personas are used, do they improve clarity without adding hidden scope?
- Could downstream artifacts use this model without inventing missing actor detail?

If weak, sharpen the role distinctions, add control-relevant notes, and separate persona context from formal role boundaries.

## Prompt Guide for Drafting the Artifact

### Starter prompt

> Draft a User Roles, Personas & Access Model for this solution.
> For each role, include its purpose, goals, key actions, access boundary, and any sensitivity or control notes.
> Add role relationships where they affect approvals, visibility, or separation of duties.
> Use personas only when they improve practical clarity and do not add scope.

### Section prompts

> Draft the role catalog so each role is distinct, behavior-oriented, and usable for downstream use cases and access review.

> Draft the role relationships section so reviewer chains, visibility rules, and separation-of-duties assumptions are explicit.

### Validation prompts

> Check whether the role model is consistent with the approved scope and planned use cases.

> Check whether any persona content introduces hidden scope, role overlap, or unsupported assumptions.
