# User Roles, Personas & Access Model Specification

## 1. What This Artifact Is For

This artifact defines who uses the solution, what each role is there to do, and what boundaries matter for access and control.

This artifact answers one simple question:

**Who is acting in the solution, and what are they allowed or expected to do?**

Use personas only when they help readers understand real-world context. Personas must not add new scope.

## 2. When to Use It

Use this artifact when:

- the solution has more than one meaningful user group
- different roles have different access or approval authority
- sensitive actions, separation of duties, or audit concerns matter

This artifact is usually drafted in Stage 4 before or alongside modules and use cases.

## 3. Before You Start

Make sure you have:

- the approved scope baseline
- a list of likely actors or user groups
- known approval, access, or sensitivity concerns
- named owner and reviewer

## 4. How to Draft It

Follow these steps:

1. List the user roles, not individual people.
2. Give each role a plain-language purpose.
3. List the role's main actions or responsibilities in the solution.
4. Define the access boundary and any control-sensitive actions.
5. Note approval, stewardship, or exception-handling responsibility where relevant.
6. Add personas only if they improve clarity for use cases, training, or adoption.
7. Map the roles to the related capabilities, modules, or use cases.

Useful test:

- If two roles do the same thing with the same boundary, combine them unless there is a control reason to keep them separate.
- If a persona starts to create new requirements, remove or rewrite it.

## 5. Minimum Structure

### 5.1. Document header

Include:

- initiative or solution name
- version and status
- owner and reviewer
- short note on why the role model matters for this initiative

### 5.2. Role table

Use a table like this:

| Role | Purpose | Main actions | Access boundary | Control notes | Related IDs |
| --- | --- | --- | --- | --- | --- |
| Staff member | Raises and tracks requests. | Submit request, view own request | Can act only on own requests | No approval authority | `FC-001`, `SM-001`, `UC-001` |

### 5.3. Relationship notes

Add short notes for:

- reviewer or approval chains
- separation-of-duties rules
- privileged or supervisory roles
- visibility rules between roles

### 5.4. Optional personas

If personas are used, keep them short:

- persona name
- linked role
- real-world context
- key goals or pain points
- enablement note if useful

## 6. Writing Rules

This artifact should define role boundaries and user context.

Keep the following out:

- raw account inventories
- group or directory implementation detail
- secrets or credential procedures
- full identity-platform design
- training plans

For detailed authorization logic, use the formal access-control spec in the security domain.

## 7. Done When

This artifact is ready when:

- the important actors are clear
- access boundaries and control-sensitive responsibilities are visible
- downstream use cases can use the same actor model without guessing
- persona content, if used, adds clarity without changing scope

## 8. What Comes Next

Use this artifact to support:

1. [Solution Modules](solution_modules_specification.md)
2. [Use Case Narratives](use_case_narratives_specification.md)
3. security, training, and adoption artifacts where role boundaries matter

## 9. Prompt Guide

Starter prompt:

```text
Draft a User Roles, Personas & Access Model for Stage 4.
List the user roles, their purpose, main actions, access boundary, and control notes.
Use personas only if they improve practical clarity and do not add scope.
```

Validation prompt:

```text
Check whether any role is unclear, overlaps another role without reason, or conflicts with the approved scope and planned use cases.
```
