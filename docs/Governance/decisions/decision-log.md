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
