# Data Governance & Impact Assessment Specification

## Purpose

The Data Governance & Impact Assessment identifies the data categories handled by the initiative, the governance implications they create, and the operational, privacy, or compliance impacts that must be managed.

It exists to make data accountability visible before implementation is finalized. A useful assessment tells the organization what data is in play, how sensitive it is, who is accountable, what obligations are triggered, and what impacts require action.

## When It Is Required

This artifact is required when the initiative creates, collects, stores, processes, shares, or materially changes organizational data.

## Intended Readers and Users

- Data Steward
- Data Governance Officer
- Business Owner / Process Owner
- security and privacy reviewers
- Delivery Owner
- operations and support stakeholders where data handling affects service

## Intended Project Context

Use this artifact during design and governance review before implementation is finalized. It is most useful where data sensitivity, stewardship, retention, privacy, or operational impact must be made explicit.

It should align with the NIST Privacy Framework by identifying data categories, privacy implications, and governance actions early. It should also align with NIST CSF governance and identification outcomes by making stewardship, sensitivity, and obligations explicit.

## How Much Detail to Include

Include enough detail to explain data categories, sensitivity, obligations, stewardship, and material impacts. Do not turn it into a full data model or a legal opinion.

## Required Content or Minimum Structure

### 1. Assessment context

Must include:

- initiative or solution name
- scope of data handling being assessed
- date or version
- assessment owner

This section identifies what data-handling context the assessment covers.

### 2. Data categories and sensitivity

Must include:

- categories of data produced, stored, processed, or shared
- sensitivity or classification of those categories
- whether personal, confidential, regulated, or operationally critical data is involved

This section makes the data exposure visible in practical terms.

### 3. Governance and obligation impacts

Must include:

- internal policy implications
- regulatory, contractual, or privacy implications where relevant
- operational or lifecycle impacts that require governance attention

This section shows why the data matters beyond implementation.

### 4. Accountability and stewardship

Must include:

- named Data Steward
- other governance or privacy contacts where relevant
- ownership assumptions that affect data quality, retention, or access

This section makes accountability explicit.

### 5. Risks, issues, and required actions

Should include:

- material governance, privacy, or operational risks
- known gaps or unresolved issues
- required actions and owners where the assessment reveals control needs

This section turns the assessment into a usable governance tool.

## What to Keep Out

Keep the following out of this artifact:

- full field-by-field data dictionaries
- detailed schema design
- full migration procedure detail
- lengthy legal analysis copied from other sources

## Relationships to Other Artifacts

This artifact should inform the Data Asset Specification, Security & Privacy Risk Assessment, Compliance & Regulatory Alignment Statement, Backup, Restore & Recovery Plan, and operational support planning.

## Ownership, Review, and Acceptance Expectations

The Data Steward or analyst responsible for data governance usually coordinates this artifact with security, privacy, and business input.

Review should include the Data Governance Officer where governance exposure is material.

## Maintenance Expectations

Update when data categories, sensitivity, stewardship, storage patterns, or triggered obligations change.

## Validation Guide

- Does the assessment make the handled data and its sensitivity clear?
- Are stewardship and governance accountability explicit?
- Are material compliance, privacy, or operational impacts visible?
- Does the artifact show what action is required where risk or obligation exists?

If weak, sharpen the data categories, add accountability, and state the triggered obligations more plainly.

## Prompt Guide for Drafting the Artifact

### Starter prompt

> Draft a Data Governance & Impact Assessment for this initiative.
> Identify the categories of data involved, their sensitivity, the main governance or compliance implications, the named Data Steward, and the operational or privacy impacts that must be managed.
> Keep it practical and action-oriented.
