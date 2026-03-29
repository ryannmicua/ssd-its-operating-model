# Business Rules Catalog Specification

## 1. What This Artifact Is For

The **Business Rules Catalog** is a centralized repository of rules, validations, policies and approval conditions that apply across modules and use cases. It provides a single place to document and trace the rules that govern behaviour, decision logic and exception handling.

It answers questions like:

* **What rules must be applied for this solution to operate correctly and compliantly?**
* **Why does each rule exist and what policy or rationale supports it?**
* **Where does each rule apply (module, use case, process step)?**
* **What is the impact of the rule on decisions and outcomes?**

Having a business rules catalog prevents rule duplication, fragmentation and inconsistency. It helps solution designers, developers, testers and auditors see which rules matter, why, and how they affect behaviour.

## 2. When to Use It

Use this artifact in **Work Definition Details (Stage 4)** when the solution contains numerous validations, approval conditions or decision logic that cut across multiple modules or use cases. It is especially useful when:

* Policy or regulatory rules must be applied consistently throughout the solution.
* Approvals or exception handling depend on clear and repeatable rules.
* Multiple modules share the same validation logic.
* Complex branching or conditional flows need to be traceable.
* Auditability requires that rules and their rationales be documented explicitly.

For simple systems with minimal rules, it may be sufficient to document rules directly in use case narratives or module definitions. As the number or complexity of rules grows, a separate catalog improves clarity.

## 3. Stage Fit and Handoffs

* **Work Definition Details (Stage 4):** Draft the catalog alongside Solution Module Definitions and Use Case Narratives. Identify rules, rationale, affected modules/use cases, and validation implications.
* **Delivery Mobilization (Stage 5):** Review the catalog with policy owners, compliance officers or subject matter experts. Refine as needed and baseline the rules.
* **Work Delivery (Stage 6):** Use the catalog to guide development and testing. Link rules to test cases and evidence in the Validation & Evidence Matrix.
* **Acceptance, Transition & Closure (Stage 7):** Reference the catalog during acceptance to confirm that mandatory rules have been implemented and validated.

Upstream sources:

* [Functional Capabilities Specification](functional_capabilities_specification.md)
* Policy and regulatory documents relevant to the initiative
* SME input and governance policies

Downstream artifacts:

* [Solution Module Definition Specification](solution_module_definition_specification.md)
* [Use Case Narratives Specification](use_case_narratives_specification.md)
* [Validation & Evidence Matrix Specification](../governance_and_control_deliverables/validation_and_evidence_matrix_specification.md)

## 4. Before You Start

Make sure you have:

* A list of modules and use cases where rules will apply.
* Access to relevant policies, legal requirements, or regulatory obligations.
* Subject matter experts who can explain the rationale behind each rule.
* Agreement on numbering or identification conventions — use `BR-###` identifiers for stable traceability.
* Named owner and reviewer for the catalog.

## 5. How to Draft It

1. **Identify rules.** Gather all business rules, approval conditions, validations and exception criteria from Functional Capabilities, Use Case Narratives, policy documents and SME interviews.
2. **Assign a stable identifier.** Give each rule a unique `BR-###` ID to facilitate traceability and change control.
3. **Write the rule statement.** Describe the rule in clear, concise language. Include any conditions or thresholds that trigger the rule.
4. **Record the rationale.** Explain why the rule exists. Reference policies, legal requirements, business rationale or risk controls.
5. **List affected modules and use cases.** Identify where the rule applies. Link to the relevant `SM-###` and `UC-###` IDs.
6. **Describe decision impact.** State how the rule influences decisions, outcomes, or system behaviour (e.g. reject a request, require approval, apply a discount).
7. **Define validation and evidence needs.** Note how the rule will be tested or validated and what evidence will prove compliance.
8. **Add notes or remarks.** Include any additional comments, open questions or known exceptions.

## 6. Minimum Structure

Use a table like this:

| Rule ID | Rule statement | Rationale / Policy basis | Affected modules / use cases | Decision impact | Validation & evidence | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| BR-001 | Approver must be a manager in the requestor's department | Company Policy XYZ | SM-002, UC-008 | Requests from other departments require re-assignment to correct approver | UAT; audit log | Exceptions only for emergency scenarios |
| BR-002 | Requests over $5,000 require finance approval | Finance Policy 12-B | SM-001, UC-003 | Adds finance approval step | Functional test; evidence of approval captured | Threshold indexed annually |

## 7. Writing Rules

Each rule entry should be:

- assigned a unique `BR-###` ID before it is considered complete — rules without stable IDs cannot be traced or referenced
- written as an assertion that stands alone ("Staff may not approve their own requests"), not as a process step or workflow description
- kept separate from its rationale — the rule statement and the policy basis belong in distinct fields, not merged into a single sentence
- atomic — one condition, one outcome; split compound rules into separate entries with their own IDs

Keep the following out of rule entries:

- workflow steps or UI behavior (those belong in Use Case Narratives)
- implementation detail or technical conditions (those belong in the Technical Design Document)

Where a rule originates from a named policy, regulation, or governance obligation, reference that source explicitly rather than paraphrasing it.

## 8. Traceability and Ownership Minimum

Each rule entry should link upstream to at least one FC, SM, or policy document and downstream to at least one test case or validation evidence item.

Minimum ownership expectations:

- Delivery Owner confirms the catalog is complete and entries are clearly stated.
- Policy or Compliance Owner confirms that rules originating from regulation or corporate policy are accurately recorded.
- Solution Lead confirms that all rules with cross-module impact are identified and linked to the relevant module and use case identifiers.

## 9. Done When

This artifact is ready when:

- each rule has a unique `BR-###` ID and an assertion-style rule statement
- the rule rationale and policy basis are recorded separately from the rule statement
- each rule is linked to at least one affected SM or UC identifier
- no workflow steps or UI behavior are embedded in rule entries
- validation and evidence needs are noted for each rule
- reviewed and confirmed by the Delivery Owner and the relevant policy or compliance authority

## 10. What Comes Next

After this catalog is baselined:

1. reference `BR-###` IDs in the [Solution Module Definition Specification](solution_module_definition_specification.md) to link applicable rules to each module
2. use business rules to inform decision logic, validation handling, and exception paths in the [Technical Design Document Specification](../operational_readiness_deliverables/technical_design_document_specification.md)
3. link `BR-###` entries to test cases and delivery evidence in the [Validation & Evidence Matrix Specification](../governance_and_control_deliverables/validation_and_evidence_matrix_specification.md)
4. confirm that mandatory rules have been implemented and tested in the [Acceptance Record Specification](acceptance_record_specification.md)

## 11. Prompt Guide

Starter prompt:

```text
Create a Business Rules Catalog for Work Definition Details (Stage 4).
List each rule with a unique BR-### ID, the rule statement, rationale or policy basis, affected modules and use cases, and the expected decision impact and validation method.
Use a table format for clarity.
```

Validation prompt:

```text
Check whether the Business Rules Catalog identifies all relevant rules, assigns unique IDs, states the rationale and policy basis, lists affected modules and use cases, and defines validation and evidence needs.
```
