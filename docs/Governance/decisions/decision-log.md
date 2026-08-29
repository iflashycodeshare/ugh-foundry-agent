# Decision Log

> Canonical record of all traceable decisions. Maintained by the **Architect**.
> Each entry captures the four pillars: **Decision**, **Policy**, **Authority**, **Accountability**.
>
> See `.github/skills/decision-traceability.md` for the full framework.

## Decision Index

| ID | Date | Category | Decision (summary) | Authority | Accountable | Status |
|----|------|----------|--------------------|-----------|-------------|--------|
| DEC-001 | 2026-08-28 | Governance | Workspace initialized at Tier 3 (Enterprise Program Office) | User | Architect | Active |
| DEC-005 | 2026-08-27 | Scope | Preserve source authority and Ring 0-only boundaries for Issue #1 intake | Workspace Owner / PX | Program Manager | Active |
| DEC-007 | 2026-08-28 | Model Governance | Replace non-compliant Model C producer with Grok 4.6 for Phase 1 | Program Executive | Program Executive | Active |
| DEC-008 | 2026-08-28 | Scope | Select the Candidate Hybrid decomposition at DP-4 | Workspace Owner | Program Executive | Active |

---

## Decision Records

### DEC-001: Workspace Tier Selection

| Field | Value |
|-------|-------|
| **ID** | DEC-001 |
| **Date** | 2026-08-28 |
| **Category** | Governance |
| **Decision** | Initialize workspace at Tier 3 — Enterprise Program Office |
| **Policy** | Workspace Configuration (`.github/workspace-config.md`) |
| **Authority** | User (workspace creator) |
| **Accountable** | Architect (decision traceability custodian) |
| **Context** | Initial workspace scaffolding — tier determines governance depth, agent roster, and planning artifacts |
| **Alternatives** | Tier 1 (Small Team), Tier 2 (Multi-Project Team), Tier 3 (Enterprise Program Office) |
| **Consequences** | Governance, agents, and planning artifacts are configured for the selected tier |
| **Reasoning** | Template provides pre-configured governance depth matching team size and compliance needs; higher tiers add ceremony justified by coordination overhead |
| **Assumptions** | Team structure and compliance requirements match the selected tier for the project duration |
| **Invalidation** | If team grows beyond tier capacity or compliance requirements change, re-evaluate tier selection |
| **Status** | Active |
| **Linked Artifacts** | `.github/workspace-config.md`, RSN-001 |

### DEC-005: Ring 0 Scope Boundaries and Source Classification

| Field | Value |
|-------|-------|
| **ID** | DEC-005 |
| **Date** | 2026-08-27 |
| **Category** | Scope |
| **Decision** | Process only the three user-approved inputs in Ring 0; keep SOW contractual authority; label transcript requirements absent from SOW as NEWLY DISCOVERED even when platform constraints corroborate them; do not begin Ring 1, implementation, or architecture acceptance. |
| **Policy** | User-approved Ring 0 package; `.github/prompts/constitution.prompt.md` section 5a; `.github/skills/ring-management.md`; `.github/skills/decision-traceability.md` |
| **Authority** | Workspace Owner for explicit corpus and scope; Program Executive for recording and classification |
| **Accountable** | Program Manager |
| **Context** | GitHub Issue #1 and milestone `Ring 0 — Intake` require a source-grounded intake that exposes discovery gaps without changing contractual scope. |
| **Alternatives** | Merge all sources into unqualified requirements; process an expanded corpus; treat platform corroboration as SOW inclusion; begin planning or solution design. |
| **Consequences** | Traceability remains auditable and discovery gaps remain visible; required architecture, security, brainstorm, lessons, and gate-review activities remain pending. |
| **Assumptions** | The three named files are the complete user-approved extraction set; their stated mock status does not alter the delegated analysis; direct transcript quotations are not authorized. |
| **Invalidation** | Additional approved inputs, revised source authority, changed data-handling instruction, or PX/user scope change requires reclassification and a new decision record. |
| **Status** | Active |
| **Linked Artifacts** | GitHub Issue #1; milestone `Ring 0 — Intake`; `docs/customer-docs/Objective/objective-summary.md`; `docs/Sessions/journal.md` DEC-005 and RSN-002 |
| **Reasoning** | RSN-002 |

### DEC-007: Ring 0 Brainstorm Model C Substitution

| Field | Value |
|-------|-------|
| **ID** | DEC-007 |
| **Date** | 2026-08-28 |
| **Category** | Model Governance |
| **Decision** | Reject the unpersisted Gemini 3.1 Pro Preview Model C proposal and replace that producer with Grok 4.6 for the independent third decomposition. |
| **Policy** | `.github/skills/brainstorming.md` sections 3.2-3.3; `.github/skills/decision-traceability.md`; architecture-neutral Ring 0 boundary |
| **Authority** | Program Executive as Tier 3 brainstorm orchestrator |
| **Accountable** | Program Executive |
| **Context** | Gemini retries did not create the required immutable producer artifact; returned content also introduced premature architecture commitments and incomplete scenario traceability. |
| **Alternatives** | Accept the non-compliant output; retry the same unavailable producer indefinitely; substitute a distinct available model and re-run the complete producer task. |
| **Consequences** | Grok 4.6 produced the persisted Model C artifact with three strategies and 39/39 coverage; the rejected output is excluded from the comparison; model-family diversity remains intact. |
| **Reasoning** | Artifact persistence, complete traceability, and architecture neutrality are mandatory entry criteria for comparison. A clean replacement was more auditable than repairing or partially importing rejected content. |
| **Assumptions** | Grok 4.6 is sufficiently distinct from Claude Opus 4.8 and GPT-5.6 Sol to preserve the required reasoning diversity. |
| **Invalidation** | Evidence that Model C was not independently produced, does not cover all 39 scenarios, or breaches the architecture-neutral boundary requires replacement and re-review. |
| **Status** | Active |
| **Linked Artifacts** | `docs/Planning/brainstorm/model-C-decomposition.md`; `docs/Planning/brainstorm/comparison-matrix.md`; `docs/Operations/model-assignments.md` |

### DEC-008: Select Candidate Hybrid Decomposition at DP-4

| Field | Value |
|-------|-------|
| **ID** | DEC-008 |
| **Date** | 2026-08-28 |
| **Category** | Scope |
| **Decision** | Select the Candidate Hybrid decomposition for subsequent mandatory Phase 2 WBS alternatives. The selection commits planning to B2's frozen acceptance spine, C2's treatment of unresolved authority questions as critical-path human inputs, A2's authorization-before-grounding dependency, comprehensive evidence for the identified tensions, and least-cost reuse of evidence without collapsing source-scenario assertions. It preserves all 39 scenarios and their Must/Should/Could priorities. It does not select a WBS, architecture, product, topology, component, model, runtime, database, index, staffing plan, schedule, release, or deployment approach. |
| **Policy** | `.github/skills/brainstorming.md` section 2.2 (mandatory multi-option analysis because customer documents are present); Ring 0 architecture-neutral boundary |
| **Authority** | Workspace Owner as DP-4 decision authority |
| **Accountable** | Program Executive |
| **Context** | The nine-option Phase 1 comparison and independent plan and architecture reviews were complete and ready for human selection. The regulated healthcare context makes location-level interpretation and truthful amendment freshness dominant risks. |
| **Alternatives** | A1, A2, A3, B1, B2, B3, C1, C2, C3, or a differently bounded hybrid. |
| **Consequences** | Phase 1 selection is complete and the Candidate Hybrid becomes the input to mandatory Phase 2 competing WBS construction. OQ-01 and OQ-02 must be surfaced early as accountable human inputs rather than deferred assumptions; pre-retrieval authorization remains a hard predecessor to grounding and citation; comprehensive tension evidence remains required. Ring 0 stays active and Phase 2 must still produce five WBS alternatives before a further human selection. |
| **Reasoning** | The hybrid constrains parallel delivery with B2's acceptance spine, exposes C2's unresolved authority questions on the critical path, preserves A2's authorization ordering, and retains stronger tension evidence. Surfacing OQ-01 and OQ-02 early is more valuable than schedule savings from deferral because location-level misinterpretation and untruthful amendment freshness are the dominant regulated-healthcare risks. |
| **Assumptions** | The approved 39-scenario source baseline and priorities remain unchanged; OQ-01, OQ-02, and OQ-03 remain human-owned dispositions; no planning construct is interpreted as an architecture commitment. |
| **Invalidation** | A Workspace Owner superseding decision, a material source or priority change, a review finding that invalidates the hybrid's coverage or neutrality, or inability to preserve the stated dependencies and evidence posture requires re-evaluation. |
| **Status** | Active |
| **Linked Artifacts** | `docs/Planning/brainstorm/comparison-matrix.md`; `docs/Planning/brainstorm/phase-1-synthesis.md`; `docs/Planning/brainstorm/plan-review.md`; `docs/Planning/brainstorm/architecture-review.md`; `docs/Planning/ring-status.md`; `docs/Sessions/journal.md` DEC-008; GitHub Issue #1 |
