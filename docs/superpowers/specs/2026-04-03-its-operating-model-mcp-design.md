# ITS Operating Model MCP Plugin Design

## 1. Status

This document is a working draft design for a redistributable MCP/plugin package that provides governed access to the ITS Operating Model repository through a plugin-managed local clone.

## 2. Objective

Create a redistributable plugin package that:

- installs and manages its own local clone of the ITS Operating Model repository
- exposes the repository as an MCP-backed documentation source
- preserves the repository as the authoritative source instead of copying its guidance into plugin code
- checks for repository updates once per day on first use
- notifies the user when updates are available and asks for an explicit update decision
- provides a manual update command or skill for users who want to refresh the managed clone on demand

Repository source:

- [adventistasia/ssd-its-operating-model](https://github.com/adventistasia/ssd-its-operating-model)

## 3. Scope Boundary

In scope:

- plugin-managed installation of the repository
- local configuration for the managed clone path and update state
- MCP resources and commands that read from the managed clone
- daily upstream update checks for the managed clone
- a manual repo update command or skill
- traceable references back to authoritative repository files

Out of scope:

- supporting a user-specified local repository path during setup
- serving repository content directly from GitHub at query time
- auto-updating the repository without user confirmation
- rewriting or embedding the full operating model into plugin-owned content
- changing the ITS Operating Model repository structure as part of plugin installation

## 4. Governing Alignment

This design aligns to the repository's documentation-first operating posture:

- the authoritative content remains in the managed local clone, not in duplicated plugin text
- the MCP should point users back to controlling documents such as [README.md](../../../README.md), [its_operating_model.md](../../../its_operating_model.md), [its_work_management_model.md](../../../its_work_management_model.md), and [work_delivery/work_delivery_framework.md](../../../work_delivery/work_delivery_framework.md)
- responses should preserve traceability by citing the source file path and, where practical, the relevant section
- the plugin should help users navigate the operating model, not silently reinterpret or expand it

## 5. Recommended Architecture

### 5.1. Packaging Model

The package should combine:

- a plugin wrapper that handles installation, configuration, user prompts, and commands
- an MCP server that reads from the plugin-managed repository clone

The plugin is responsible for ensuring that the MCP always points to a valid local clone path before normal use begins.

### 5.2. Managed Clone Model

The plugin should clone the repository into a plugin-managed directory during setup.

Recommended characteristics:

- one managed clone per installed plugin instance
- a stable local path controlled by the plugin
- stored metadata identifying the repository URL and tracked branch
- update operations limited to this managed clone

The MCP should never depend on live GitHub access during normal document retrieval.

### 5.3. Source-of-Truth Rule

All MCP reads should come from the managed local clone. The GitHub repository is the upstream source for synchronization, but not the runtime query surface.

## 6. Installation and Setup Flow

### 6.1. Setup Goal

Setup should be managed-only. The user should not be asked for a local repository path.

### 6.2. Setup Sequence

During installation or initial setup, the plugin should:

1. explain that it will install and manage a local clone of the ITS Operating Model repository
2. confirm the repository source URL
3. choose or create a plugin-managed local directory
4. clone the repository into that managed directory
5. validate that required control documents are present
6. store the managed clone path and metadata in plugin configuration
7. mark setup complete only after validation succeeds

### 6.3. Validation Rules

At minimum, setup should confirm the presence of:

- [README.md](../../../README.md)
- [its_operating_model.md](../../../its_operating_model.md)
- [its_work_management_model.md](../../../its_work_management_model.md)
- [work_delivery/work_delivery_framework.md](../../../work_delivery/work_delivery_framework.md)
- [work_delivery/deliverable_specifications_index.md](../../../work_delivery/deliverable_specifications_index.md)

If validation fails, setup should stop and report that the managed clone is incomplete or invalid.

## 7. MCP Surface

### 7.1. MCP Purpose

The MCP should help agents and users retrieve authoritative repository guidance in a stage-aware, traceable way.

### 7.2. Initial Resource Set

The first version should expose a focused set of resources or equivalent retrieval commands for:

- repository start point
- ITS Operating Model
- ITS Work Management Model
- Work Delivery Framework
- Deliverable Specifications Index
- Standard Deliverables Guide

These map to:

- [README.md](../../../README.md)
- [its_operating_model.md](../../../its_operating_model.md)
- [its_work_management_model.md](../../../its_work_management_model.md)
- [work_delivery/work_delivery_framework.md](../../../work_delivery/work_delivery_framework.md)
- [work_delivery/deliverable_specifications_index.md](../../../work_delivery/deliverable_specifications_index.md)
- [work_delivery/standard_deliverables_guide.md](../../../work_delivery/standard_deliverables_guide.md)

### 7.3. Initial Commands

The first version should support commands or tools equivalent to:

- `get_start_here`
- `get_operating_model`
- `get_work_management_model`
- `get_work_delivery_framework`
- `get_deliverable_specifications_index`
- `get_standard_deliverables_guide`
- `get_stage_guidance(stage_or_intent)`
- `check_for_updates`
- `update_repo`

`get_stage_guidance` should route to the controlling document based on stage or user intent rather than trying to synthesize a replacement framework.

### 7.4. Response Behavior

The MCP should:

- cite the authoritative file path it used
- prefer concise summaries with pointers back to source documents
- avoid restating large sections when a direct source pointer is clearer
- preserve repository-relative navigation where possible

## 8. Update Behavior

### 8.1. Daily Update Check

The plugin should check for upstream repository updates once per day on the first MCP use of that day.

The daily check should:

- fetch or otherwise inspect the remote repository state
- compare the upstream state with the managed local clone
- cache the fact that the daily check was already completed for the current day

### 8.2. Update Decision Rule

If updates are available, the plugin should:

- notify the user that the managed repository has upstream changes available
- present the update as a decision, not an automatic action
- ask whether the user wants to update now

The plugin must not auto-pull updates without user confirmation.

### 8.3. Manual Update Command

The package should include a manual command or skill that allows the user to update the managed clone on demand.

That manual action should:

- fetch from the configured upstream repository
- show whether updates are available
- ask for confirmation before changing the managed clone if confirmation was not already provided by the invoking surface
- perform a safe update of the managed clone
- report the resulting revision state back to the user

## 9. Configuration Model

The plugin should store enough configuration to manage the clone and the update-check cadence.

Recommended fields:

- `repo_url`
- `repo_path`
- `tracked_branch`
- `install_mode` with value `managed_only`
- `last_update_check_date`
- `last_seen_local_commit`
- `last_seen_remote_commit`
- `setup_completed`

## 10. Error Handling

The plugin should handle the following conditions explicitly:

- clone failure during setup
- required files missing after clone
- local managed clone becomes unreadable or deleted
- Git not available in the host environment
- remote check fails because of network or authentication issues
- local changes exist in the managed clone when an update is attempted

For the first version, the managed clone should be treated as plugin-controlled. If unexpected local modifications are detected, the plugin should stop and ask the user how to proceed rather than overwrite them silently.

## 11. Security and Governance Notes

- The plugin should read from local files and keep repository access scoped to the managed clone.
- The plugin should not mutate repository content except through explicit update operations.
- Update prompts should make clear that source content may change after refresh.
- The MCP should preserve document authority by directing users to the controlling source file whenever interpretation risk is high.

## 12. Open Implementation Decisions

The following implementation details still need to be finalized in the build phase:

- the exact plugin-managed install directory
- the plugin config file format and storage location
- the exact MCP server framework and transport
- whether `update_repo` is exposed as a command, a skill, or both
- whether daily update checks use `git fetch` or a lighter metadata comparison mechanism

## 13. Recommendation

Build the first version as a plugin that:

- performs managed-only repository installation
- validates a fixed set of authoritative documents after clone
- exposes a small, stage-aware MCP surface over the cloned repository
- checks once per day for upstream changes on first use
- asks the user before applying updates
- includes a manual repo update command for experienced users

This keeps the package easy to install, preserves local authoritative content, and aligns with the repository's documentation-as-control posture.
