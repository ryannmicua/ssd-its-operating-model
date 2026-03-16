# Solution Modules Specification

## 1. What This Artifact Is For

Solution Modules group approved Functional Capabilities into delivery and acceptance units that people can actually understand.

This artifact answers one simple question:

**How is the approved scope grouped for delivery, validation, and acceptance?**

Use modules to organize scope. Do not use them to create new scope.

## 2. When to Use It

Use this artifact in Stage 4 after Functional Capabilities are approved.

It is especially useful when:

- the scope is large enough to need clear groupings
- the team will deliver in waves, releases, or meaningful chunks
- reviewers need to see what will be demonstrated and accepted together

## 3. Before You Start

Make sure you have:

- the approved Functional Capabilities
- a working view of user roles and access expectations
- a clear idea of how delivery and acceptance will be grouped
- named owner and reviewer

## 4. How to Draft It

Follow these steps:

1. Read the approved Functional Capabilities and look for natural business groupings.
2. Group capabilities that belong together as one understandable unit of behavior.
3. Assign a stable `SM-###` ID to each module.
4. Name each module in plain language.
5. List the included `FC-###` IDs.
6. Note the primary users or roles and the planned `UC-###` IDs.
7. Check that every approved capability belongs to at least one module.

Useful test:

- If the grouping only exists because of team ownership or sprint timing, it is probably not a good module.
- If the grouping can be explained, demonstrated, and accepted as one unit, it is probably a strong module.

## 5. Minimum Structure

### 5.1. Document header

Include:

- initiative or solution name
- version and status
- owner and reviewer
- reference to the approved Functional Capabilities
- short note on how modules will be used in this initiative

### 5.2. Module summary table

Use a table like this:

| Module ID | Module name | Purpose | Included capabilities | Primary roles | Planned use cases | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| `SM-001` | Request submission | Lets staff raise and track a new request. | `FC-001`, `FC-002` | Staff member | `UC-001`, `UC-002` | Add only short notes. |

### 5.3. Coverage check

Add a simple mapping table:

| Capability ID | Assigned module ID | Notes |
| --- | --- | --- |
| `FC-001` | `SM-001` |  |

## 6. Writing Rules

Each module should:

- stay inside approved scope
- group behavior in a way business reviewers can understand
- help delivery, testing, and acceptance

Keep the following out:

- new capabilities
- detailed use case flows
- task plans
- sprint plans
- technical design detail

## 7. Done When

This artifact is ready when:

- all approved capabilities are assigned
- module boundaries are easy to explain
- reviewers can see what will be delivered and accepted together
- the set supports straightforward use case drafting

## 8. What Comes Next

After the modules are stable:

1. write the related behavior using the [Use Case Narratives Specification](use_case_narratives_specification.md)
2. keep the actor model aligned using the [User Roles, Personas & Access Model Specification](user_roles_personas_and_access_model_specification.md)
3. use the module structure to plan evidence and acceptance

## 9. Prompt Guide

Starter prompt:

```text
Draft a Solution Modules artifact for Stage 4.
Group the approved Functional Capabilities into clear delivery and acceptance units.
Assign SM IDs, list included FC IDs, identify primary roles, and do not add new scope.
```

Validation prompt:

```text
Check whether any module implies scope that is not present in the approved Functional Capabilities.
```
