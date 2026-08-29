# Ring-0: Intake

> Ingest and synthesize grounding resources (legacy code, objectives, research, transcripts, UX, architecture docs), capture requirements as .feature files, produce architecture inputs, validate stakeholders, define scope boundaries, and produce a Ring-0 gate checklist.

## Entry Criteria

- [ ] Workspace initialized
- [ ] Grounding resources imported (if available — see `docs/customer-docs/grounding-manifest.md`)

## Activities

| Activity | Owner | Status |
|----------|-------|--------|
| Ingest grounding resources from `docs/customer-docs/` | Ring Owner | Complete for the three user-approved sources |
| Synthesize legacy code into technical context summary | Ring Owner | |
| Extract requirements from objectives/SOWs → `.feature` files | Ring Owner | Complete |
| Synthesize research docs into reference summary | Ring Owner | |
| Process transcripts into stakeholder needs | Ring Owner | Complete; paraphrased and delta-classified |
| Review UX/Figma artefacts for UI requirements | Ring Owner | |
| Review architecture docs for system constraints | Ring Owner | Complete; constraints only, no target design |
| Define scope boundaries and capture in decision log | Ring Owner | Complete; DEC-005 |
| Offer brainstorm option to user (MANDATORY) | Ring Owner | Complete; DP-3 ACCEPTED on 2026-08-28 |
| Produce architecture diagrams from inputs | Architect | |
| **Dispatch Senior Cloud Architect to produce formal target architecture models (C4, Data Flow, Deployment, Domain, Integration, Security, Observability) after ADR/brainstorm acceptance — MANDATORY** | PM / Ring Owner | |
| Update findings document with Ring-0 outputs | Ring Owner | Complete |

## Grounding Resources

If `docs/customer-docs/grounding-manifest.md` exists, the following directories contain raw inputs to synthesize:

| Directory | Content | Synthesize Into |
|-----------|---------|----------------|
| `docs/customer-docs/Legacy-Code/` | Existing code and scripts | Technical context, migration notes |
| `docs/customer-docs/Objective/` | Business objectives, SOWs | Requirements (`.feature` files) |
| `docs/customer-docs/Research-docs/` | Research, specs, analysis | Reference summary, constraints |
| `docs/customer-docs/transcripts/` | Meeting notes, interviews | Stakeholder needs, priorities |
| `docs/customer-docs/UX-Figma/` | Wireframes, mockups | UI requirements, acceptance criteria |
| `docs/customer-docs/Architecture-docs/` | System designs, diagrams | Architecture inputs, constraints |

> **Purpose:** "Make sense of this mess of inputs from all over the place, so I have something structured to run through Ring 1 and later."

## Exit Criteria (Gate Checklist)

- [x] Three user-approved grounding resources synthesized.
- [x] Requirements captured in three source-specific `specs/features/*.feature` files.
- [x] Mandatory brainstorm Phase 1 completed and DP-4 Candidate Hybrid choice recorded in DEC-008.
- [ ] Mandatory brainstorm Phase 2 completed with five competing WBS variants and human selection, as required by `brainstorming.md` section 2.2.
- [ ] Architecture models produced per architect specification (C4 Context, Container, Component; Data Flow; Deployment; Domain Model; Integration; Security).
- [ ] Senior Cloud Architect dispatched after ADR/brainstorm acceptance.
- [ ] Threat model with STRIDE and Mermaid trust boundaries produced.
- [ ] Security architecture validated by Security Enabler (DP-31).
- [x] Scope boundaries recorded in DEC-005.
- [x] Findings document updated with Ring 0 intake outputs.
- [ ] Lessons learned completed; Sev 1/2 remediation issues logged, assigned, and remediated; Sev 3/4 tracked.
- [x] Ring status tracker updated; Ring 0 remains ACTIVE.
- [x] Alternate-model review completed; all MAJOR findings and the remaining MINOR source-separation condition remediated. No unresolved improvement requires user disposition.
- [ ] Gate review approved by the required human authority.

**Remaining exit items:** 7

## Gate Decision

**Status:** Pending — not gate ready
**Reviewer:** Pending
**Date:** Pending
