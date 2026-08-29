# WBS-B — Depth, Quality & Risk Mitigation (Human-Staffed)

**Ring:** Ring 0, Phase 2 — Competing WBS Construction
**Date:** 2026-08-28
**Based on:** DEC-008 — Candidate Hybrid decomposition selected at DP-4 (`docs/Planning/brainstorm/comparison-matrix.md`)
**Variant:** WBS-B — Depth, Quality & Risk Mitigation, per `.github/skills/brainstorming.md` §8.2
**Staffing model:** Human (specialized roles, no multi-hatting, independent review separated from execution)
**Status:** Draft for side-by-side comparison only. **NOT SELECTED.**

## Explicit Scope Guard

- This document is one of five competing Phase 2 WBS variants (A, B, C, D, E). No WBS is selected here.
- Ring 1 has not started. No Ring 1 activity, WBS baseline, or handoff occurs in this document.
- No checklist, ring-status, program-status, or journal artifact is updated by this document.
- No cost or duration estimate is made anywhere in this document. Sequencing uses stages and predecessor gates only.
- No architecture, product, topology, model, runtime, database, or index selection is made. Named ARC standards (Microsoft Entra ID, Azure Key Vault, Azure Monitor/Application Insights, Bicep, Azure DevOps Boards/Repos, Microsoft Foundry hosted agents, the UHG AI allowlist) appear only as authoritative source constraints inherited from ARC-01 through ARC-14, never as choices made in this WBS.
- Shared scope is exactly eight work packages, unchanged from the assigned scope. No work package is added, removed, split, or renamed:
  WP-1 Authority and Acceptance Spine; WP-2 Identity, Authorization, and Containment; WP-3 Source Access, Freshness, Location, and Read-Only Integrity; WP-4 Grounded Cited Answers and Uncertainty; WP-5 Prohibition, Refusal, Routing, and Refusal Evidence; WP-6 Audit, Diagnostic Separation, and Optional Feedback; WP-7 Performance and Availability Evidence; WP-8 Governance, Release Evidence, and Convergence.
- Priorities from the source scenarios (Must / Should / Could / Constraint) are preserved unchanged. No Should or Could is promoted to Must in this variant.

## Philosophy

Per `.github/skills/brainstorming.md` §8.2, WBS-B maximizes quality, thoroughness, and risk coverage, accepting a larger named-role footprint and more review overhead in exchange for a stronger evidence and containment posture. This variant assigns a dedicated specialist to each work package, adds independent QA, security, and governance reviewers who do not execute delivery work, places a formal review checkpoint at every stage exit gate, and defines an explicit fallback posture for every gate rather than a default-proceed assumption. Consistent with DEC-008, the human/business open questions (OQ-01, OQ-02, OQ-03) are treated as accountable critical-path inputs rather than deferred assumptions, and pre-retrieval authorization (WP-2) is preserved as a hard predecessor to grounded-answer integration (WP-4).

## Staffing Roster

| Role (named, human) | Assigned Work Package(s) | Mode | Separation-of-Duties Note |
| --- | --- | --- | --- |
| Program Authority Lead | WP-1 | Lead | Owns the acceptance spine only; does not execute delivery work in any other work package |
| Identity & Access Control Engineer | WP-2 | Lead / Execute | Sole owner of identity, authorization, and containment scope |
| Data Access & Freshness Steward | WP-3 | Lead / Execute | Sole owner of source-access, freshness, location, and read-only-integrity scope |
| Grounded Answer Engineer | WP-4 | Lead / Execute | Sole owner of grounding, citation, and uncertainty scope |
| Refusal & Routing Specialist | WP-5 | Lead / Execute | Sole owner of prohibition, refusal, and routing scope |
| Audit & Diagnostics Engineer | WP-6 | Lead / Execute | Sole owner of audit-retention, diagnostic-separation, and optional-feedback scope |
| Performance & Availability Analyst | WP-7 | Lead / Execute | Sole owner of performance and availability evidence scope |
| Governance & Release Manager | WP-8 | Lead / Execute | Sole owner of governance, release-evidence, and convergence scope |
| Independent QA Lead | WP-1 through WP-8 (review only) | Independent Review | Reviews exit evidence for every work package; does not execute delivery work in any work package |
| Security Reviewer (Independent) | WP-2, WP-4, WP-6, WP-8 (review only) | Independent Review | Independently reviews authorization, grounding, diagnostic-separation, and release-gate evidence; separate from execution roles |
| Responsible AI / Governance Auditor | WP-8 (cross-work-package evidence intake) | Independent Review | Independently reviews the responsible-AI assessment and governance-convergence evidence; separate from execution roles |
| IV&V Lead | WP-1 through WP-8 (review only) | Independent Review | Provides independent verification and validation evidence at every exit gate; separate from execution roles |

No named role holds Lead/Execute responsibility for more than one work package. Independent-review roles are deliberately assigned across multiple work packages because reviewing is not executing; this preserves separation of duties rather than introducing multi-hatting.

## Work Package Schedule (Stages and Predecessor Gates — no dates or durations)

| # | Work Package | Owner (Role) | Predecessor Gate(s) | Stage | Exit Gate |
| --- | --- | --- | --- | --- | --- |
| 1 | WP-1 Authority and Acceptance Spine | Program Authority Lead | None (root) | Stage 1 | G1 |
| 2 | WP-2 Identity, Authorization, and Containment | Identity & Access Control Engineer | G1 | Stage 2 | G2 |
| 3 | WP-3 Source Access, Freshness, Location, and Read-Only Integrity | Data Access & Freshness Steward | G1 | Stage 2 | G3 (requires OQ-01 disposition) |
| 4 | WP-4 Grounded Cited Answers and Uncertainty | Grounded Answer Engineer | G2 and G3 | Stage 3 | G4 |
| 5 | WP-5 Prohibition, Refusal, Routing, and Refusal Evidence | Refusal & Routing Specialist | G2 | Stage 3 | G5 (requires OQ-02 disposition) |
| 6 | WP-6 Audit, Diagnostic Separation, and Optional Feedback | Audit & Diagnostics Engineer | G4 and G5 | Stage 4 | G6 |
| 7 | WP-7 Performance and Availability Evidence | Performance & Availability Analyst | G4 and G5 | Stage 4 | G7 |
| 8 | WP-8 Governance, Release Evidence, and Convergence | Governance & Release Manager | G6 and G7 | Stage 5 | G8 (requires OQ-03 disposition) |

Gate G2 is a hard predecessor to WP-4 (pre-retrieval authorization precedes grounding and citation integration, preserving the A2 element of the Candidate Hybrid). Gate G1 anchors the acceptance spine as the first and last-verified artifact; G8 re-attests it at convergence.

## Parallel Streams

| Stream | Work Package(s) | Lead Role | Can Start |
| --- | --- | --- | --- |
| Stream 1 — Access Assurance | WP-2 | Identity & Access Control Engineer | After G1 |
| Stream 2 — Source Integrity | WP-3 | Data Access & Freshness Steward | After G1 |
| Stream 3 — Answer Assurance | WP-4 | Grounded Answer Engineer | After G2 and G3 |
| Stream 4 — Safety & Routing | WP-5 | Refusal & Routing Specialist | After G2 |
| Stream 5 — Evidence Capture | WP-6 | Audit & Diagnostics Engineer | After G4 and G5 |
| Stream 6 — Assurance Measurement | WP-7 | Performance & Availability Analyst | After G4 and G5 |
| Convergence Stream | WP-8 | Governance & Release Manager | After G6 and G7 |

Streams 1 and 2 run concurrently, as do Streams 3 and 4, and Streams 5 and 6. WBS-B intentionally bounds concurrency to pairs of streams behind a shared predecessor gate, rather than maximizing simultaneous streams, so that each stream exit is independently reviewed before the next stage opens.

## Milestone Sequence (criteria-based, no target dates)

| Milestone | Criteria |
| --- | --- |
| M1 — Authority & Acceptance Spine Frozen (G1) | WP-1 complete; the 39-scenario contract is locked with no scope drift; Independent QA Lead confirms no addition or removal against the assigned scope. |
| M2 — Pre-Retrieval Authorization Verified (G2) | WP-2 complete; Security Reviewer independently confirms authorization is evaluated before retrieval and is not implemented as post-retrieval filtering. |
| M3 — Source Integrity & Freshness Disposition Confirmed (G3) | WP-3 complete; OQ-01 human disposition recorded; ARC-13's prohibition on intra-day freshness claims is preserved in the disposition. |
| M4 — Grounded Answer Path Evidenced (G4) | WP-4 complete; citation completeness and uncertainty-statement behavior independently verified by Independent QA Lead and Security Reviewer. |
| M5 — Refusal, Routing & Evidence Confirmed (G5) | WP-5 complete; OQ-02 disposition recorded (benefits-team destination and refusal-audit-evidence interpretation); refusal-audit evidence independently verified. |
| M6 — Audit & Diagnostic Separation Evidenced (G6) | WP-6 complete; audit retention and diagnostic-payload exclusion independently verified as separate log planes. |
| M7 — Performance & Availability Evidence Captured (G7) | WP-7 complete; Should-level measurements are reported against their stated targets without being treated as release-blocking. |
| M8 — Governance Baseline & Convergence (G8) | WP-8 complete; OQ-03 disposition recorded (Azure DevOps as authoritative work-tracking/source-control, GitHub reconciled without replacing it); all independent reviews closed; 39/39 ledger attestation reconfirmed. |

## OQ Critical-Path Table

| OQ ID | Human/Business Question (per comparison-matrix) | Blocks Gate(s) | Work Package(s) Affected | Disposition Owner (role) | Consequence if Undisposed |
| --- | --- | --- | --- | --- | --- |
| OQ-01 | Confirm the interpretation of an amendment loaded yesterday against nightly-export availability while preserving ARC-13's prohibition on intra-day freshness claims. | G3 (WP-3 freshness acceptance); indirectly gates the Stage 3 start of WP-4 | WP-3, WP-4 | Program Authority Lead | WP-3 freshness acceptance is withheld; only non-freshness-dependent WP-3 items proceed; WP-4 integration cannot begin. |
| OQ-02 | Confirm the accountable benefits-team destination and the required interpretation of refusal-specific audit evidence for DISC-03. | G5 (WP-5 completion) | WP-5, WP-6 (refusal-audit content) | Refusal & Routing Specialist, with Program Authority Lead | WP-5 routing/refusal-evidence closure is withheld; WP-6 refusal-audit content remains a provisional finding. |
| OQ-03 | Reconcile current GitHub tracking with the authoritative Azure DevOps work-tracking/source-control constraints without replacing the latter. | G8 (WP-8 governance baseline) | WP-8 | Governance & Release Manager | The governance baseline is not set; the convergence gate (G8) does not close. |

## Formal Review Checkpoints and Fallback Posture

| Gate | Formal Reviewer(s) | Review Focus | Fallback if Gate Fails |
| --- | --- | --- | --- |
| G1 | Independent QA Lead | Acceptance-spine completeness; no scope drift against the assigned eight work packages | Revert to comparison-matrix hybrid re-review; no work package opens until the spine is re-frozen. |
| G2 | Security Reviewer (Independent) | Pre-retrieval authorization control; no post-retrieval-filtering substitution | Hard stop: block WP-4 and WP-5 starts; escalate to Security Reviewer for remediation before any retrieval-adjacent work proceeds. |
| G3 | Independent QA Lead; human OQ-01 disposition attached | Source-access modes, freshness-claim boundary, location-context integrity, read-only behavior | If OQ-01 is delayed, WP-3 proceeds only on non-freshness-dependent read-only-integrity items; freshness-dependent acceptance and the WP-4 predecessor remain explicitly blocked, not silently assumed. |
| G4 | Independent QA Lead; Security Reviewer | Grounded-answer completeness, citation-authorization side-channel, uncertainty statement | Roll back to a WP-4 remediation cycle; WP-6 and WP-7 measurement against an unverified answer path does not begin. |
| G5 | Independent QA Lead; human OQ-02 disposition attached | Refusal behavior, routing destination, refusal-audit evidence | If OQ-02 is delayed, refusal detection may proceed, but routing-destination and refusal-audit-evidence closure remain open findings; WP-6 audit content for refusals stays provisional. |
| G6 | Security Reviewer (Independent) | Audit-retention completeness; diagnostic-payload exclusion as a separate log plane | Escalate Must-level audit or diagnostic-exclusion failures to Audit & Diagnostics Engineer as hard-blocking; Could-level feedback findings are logged without blocking. |
| G7 | Independent QA Lead | Measurement methodology for Should-level performance and availability evidence | Should-level shortfalls are logged as findings under `docs/Quality/quality-risk-register.md`-style tracking, not treated as Must-blocking, per priority preservation. |
| G8 | Responsible AI / Governance Auditor; Security Reviewer; IV&V Lead (joint) | Responsible-AI assessment, security/ATO evidence, release-gate completeness, OQ-03 disposition, 39/39 ledger reconfirmation | If OQ-03 is unresolved, the governance baseline is not set and the convergence gate does not close; escalate to Governance & Release Manager and Program Authority Lead for authority reconciliation. Ring 1 handoff does not proceed from this document in any case. |

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation (WBS-B) |
| --- | --- | --- | --- |
| Location-level misinterpretation (ARC-14 / DISC-01) is under-verified | Medium | High | Dedicated Data Access & Freshness Steward ownership plus mandatory Independent QA Lead sign-off at G3 before any downstream integration. |
| Intra-day freshness overclaim (ARC-13 / DISC-05) proceeds without business disposition | Medium | High | OQ-01 hard-gates G3 exit and the WP-4 predecessor; no default disposition is permitted. |
| Authorization implemented as post-retrieval filtering instead of pre-retrieval control (ARC-03 / DISC-02) | Low | High | Independent Security Reviewer sign-off is required at G2 before WP-4 or WP-5 may start. |
| Refusal routed to an unconfirmed destination, or refusal-audit evidence left incomplete (DISC-03) | Medium | Medium | OQ-02 hard-gates G5 exit; a provisional-finding flag is carried on WP-6 audit content until disposed. |
| Audit retention and diagnostic logging are conflated (BR-06 versus ARC-07) | Low | High | Distinct role ownership (Audit & Diagnostics Engineer) plus Security Reviewer sign-off at G6 on the separate log-plane distinction. |
| Governance-tracking conflict between GitHub and Azure DevOps is left unresolved (OQ-03) | Medium | Medium | OQ-03 hard-gates G8; convergence is explicitly withheld until Governance & Release Manager records a disposition. |
| Depth-focused staffing increases coordination surface across twelve named roles | High | Medium | Single-owner-per-work-package design and fixed gate cadence bound the coordination surface; independent reviewers operate at defined gate points rather than continuously. |
| Should-level measurement (BR-05 / NFR-03 / ELAB-01) is mistaken for a release-blocking Must | Low | Medium | Priority-preservation is enforced at the G7 and G8 sign-offs; Should findings are logged as findings, not blockers. |

## Trade-offs

- **Strengths:** Full separation of duties across twelve named roles; independent QA, security, and governance review at every stage exit; hard human-disposition gates for OQ-01, OQ-02, and OQ-03 rather than default assumptions; explicit, gate-by-gate fallback posture; strongest available protection against the regulated-healthcare risks DEC-008 identifies as dominant — location-level misinterpretation and untruthful amendment freshness.
- **Weaknesses:** Highest named-role count among the human-staffed variants, which widens the coordination surface (a staffing-footprint observation, not a cost or duration estimate); slower stage-to-stage progression than a speed-optimized sequencing because every exit gate requires independent sign-off before the next stage may open; more per-gate evidence artifacts to maintain than a lean variant.
- **Best suited for:** An objective where regulated-domain risk (freshness, location, authorization, prohibited-subject-matter refusal) dominates over elapsed-stage pressure — directly matching DEC-008's reasoning that these risks are the dominant regulated-healthcare concern for this program.

## Architecture-Neutrality Statement

This WBS assigns human roles, sequencing stages, predecessor gates, and review checkpoints only. It selects no architecture, product, topology, model, runtime, database, or index. Every reference to Microsoft Entra ID, managed identity, Azure Key Vault, Azure Monitor/Application Insights, Bicep, Azure DevOps Boards, Azure DevOps Repos, Microsoft Foundry hosted agents, or the UHG AI allowlist is a restatement of an authoritative ARC-series source constraint (ARC-01 through ARC-14, principally ARC-01, ARC-02, ARC-04, ARC-05, ARC-08, ARC-09, ARC-10), not a design selection made by this document. No hidden architecture-pattern commitment is introduced by the stage sequencing or role assignments above.

## Source Priority Statement

This variant preserves every source priority exactly as declared in the three feature files and reaffirmed by the comparison-matrix Candidate Hybrid and DEC-008:

- **Must (15):** BR-01, BR-02, BR-03, BR-04, BR-06, BR-08, NFR-01, NFR-02, NFR-04, NFR-05, DISC-01, DISC-02, DISC-03, DISC-04, DISC-05.
- **Should (3):** BR-05, NFR-03, ELAB-01.
- **Could (2):** BR-07, DISC-06.
- **Constraint (19):** ARC-01 through ARC-14 (ARC-08 counted once as a Scenario Outline), plus the five unnumbered scenarios SOW-SCOPE-READONLY, SOW-SCOPE-PROHIBITED, SOW-ACCEPTANCE, SOW-GOVERNANCE, and DISC-SCOPE-READONLY.

BR-07 and DISC-06 remain Could in this variant; BR-05, NFR-03, and ELAB-01 remain Should. WBS-B gives Shoulds and Coulds deeper design review and dedicated sign-off attention (see G6 and G7 checkpoints) than a lean variant would, but this depth of treatment does not change their release-blocking status. No Should or Could is promoted to Must, and no Constraint is weakened or reinterpreted as optional.

## Scenario Traceability Ledger (39 rows)

| Source ID | Scenario Title | Priority | WP | Treatment |
| --- | --- | --- | --- | --- |
| BR-01 | Return a grounded answer to an in-scope provider-network question | Must | WP-4 | Grounded-answer behavior verified at G4 by Grounded Answer Engineer, gated by G2 (authorization) and G3 (source integrity / OQ-01). |
| BR-02 | Cite every factual claim | Must | WP-4 | Citation-completeness behavior independently verified at G4 with Security Reviewer sign-off on the citation-authorization side-channel. |
| BR-03 | Restrict results to the analyst business unit | Must | WP-2 | Independent Identity & Access Control Engineer implementation with Security Reviewer sign-off at G2 before any downstream retrieval work begins. |
| BR-04 | Refuse a coverage-determination question | Must | WP-5 | Refusal behavior verified at G5 by Refusal & Routing Specialist. |
| BR-05 | Meet the response-time objective | Should | WP-7 | Response-time evidence measured at G7 by Performance & Availability Analyst; Should priority preserved, not promoted to Must. |
| BR-06 | Retain query and response records | Must | WP-6 | Seven-year audit-retention behavior independently verified at G6 by Audit & Diagnostics Engineer with Security Reviewer sign-off. |
| BR-07 | Rate answer quality inline | Could | WP-6 | Inline-rating association verified at G6 as a Could-priority item; dedicated design review given despite lower priority; not promoted to Must. |
| BR-08 | State uncertainty when no answer is found | Must | WP-4 | Uncertainty-statement behavior verified at G4; cross-referenced with DISC-04 evidence in the same package. |
| NFR-01 | Keep processing in United States regions | Must | WP-2 | Verified as a containment control by Identity & Access Control Engineer; evidenced at G2 alongside ARC-04, distinct scenario assertion retained. |
| NFR-02 | Keep provider and member data within the UHG tenant | Must | WP-2 | Verified as a containment control at G2; evidenced alongside ARC-05, distinct scenario assertion retained. |
| NFR-03 | Meet business-hours availability target | Should | WP-7 | Availability evidence measured at G7; Should priority preserved. |
| NFR-04 | Require responsible AI assessment before production | Must | WP-8 | Responsible AI assessment independently reviewed by Responsible AI / Governance Auditor at G8. |
| NFR-05 | Require security review and ATO before go-live | Must | WP-8 | Security-review and ATO evidence independently reviewed by Security Reviewer and IV&V Lead at G8. |
| ARC-01 | Accept Microsoft Entra ID only | Constraint | WP-2 | Authoritative identity-provider constraint restated (not selected); verified at G2 by Identity & Access Control Engineer. |
| ARC-02 | Disallow static application credentials | Constraint | WP-2 | Authoritative credential-management constraint restated; verified at G2 with Security Reviewer sign-off. |
| ARC-03 | Evaluate authorization before retrieval | Constraint | WP-2 | Hard predecessor: pre-retrieval authorization independently verified by Security Reviewer at G2 before WP-4 may start. |
| ARC-04 | Keep processing and storage in United States Azure regions | Constraint | WP-2 | Authoritative residency constraint restated; evidenced at G2, reusing NFR-01 evidence without collapsing the scenario assertion. |
| ARC-05 | Prevent customer data from leaving the tenant | Constraint | WP-2 | Authoritative tenant-boundary constraint restated; evidenced at G2, reusing NFR-02 evidence, distinct assertion retained. |
| ARC-06 | Prohibit training and fine tuning on customer data | Constraint | WP-2 | Authoritative model-governance constraint restated; verified at G2 as a data-use containment control by Identity & Access Control Engineer. |
| ARC-07 | Exclude provider payloads from diagnostic logging | Constraint | WP-6 | Diagnostic-payload-exclusion constraint verified at G6; Security Reviewer independently confirms the audit-versus-diagnostic log-plane distinction. |
| ARC-08 | Use the approved platform service for each capability (Scenario Outline) | Constraint | WP-8 | Approved-platform-service constraints restated across hosting, secrets, observability, infrastructure-as-code, work-tracking, and source-control; verified at G8 as authoritative source constraints, not selections. |
| ARC-09 | Restrict model use to the approved allowlist | Constraint | WP-8 | Model-allowlist constraint restated; verified at G8 by Governance & Release Manager. |
| ARC-10 | Govern a model version change | Constraint | WP-8 | Model-version change-control constraint restated; verified at G8, reusing change-advisory-board evidence from ARC-08 / SOW-GOVERNANCE without collapsing the scenario assertion. |
| ARC-11 | Access all approved data sources using their defined modes | Constraint | WP-3 | Authoritative source-access-mode constraint restated; verified by Data Access & Freshness Steward at G3. |
| ARC-12 | Enforce all production release gates | Constraint | WP-8 | Full production release-gate constraint restated; independently verified at G8 by IV&V Lead before convergence. |
| ARC-13 | Do not claim intra-day amendment freshness | Constraint | WP-3 | Authoritative freshness-claim boundary restated; OQ-01 disposition required before G3 exit. |
| ARC-14 | Guard against location-level misinterpretation | Constraint | WP-3 | Authoritative location-context constraint restated; verified at G3 with Independent QA Lead sign-off. |
| DISC-01 | Answer contract status at the identified location | Must | WP-3 | Location-level answer behavior independently verified at G3 by Data Access & Freshness Steward and Independent QA Lead. |
| DISC-02 | Authorize before retrieving business-unit data | Must | WP-2 | Query-time authorization independently verified at G2; anchors the WP-2-to-WP-4 hard predecessor gate. |
| DISC-03 | Refuse, route, and log a coverage-determination request | Must | WP-5 | Refusal/routing/audit behavior gated by OQ-02 disposition before G5 exit; provisional finding recorded on WP-6 audit content until disposed. |
| DISC-04 | State record-specific uncertainty without inventing an answer | Must | WP-4 | Record-specific uncertainty behavior verified at G4 and kept distinct from BR-08 while sharing its answer-integrity package. |
| DISC-05 | Surface the known amendment freshness limitation | Must | WP-3 | Directly gated by OQ-01; freshness-limitation disclosure verified at G3 before WP-4 integration proceeds. |
| DISC-06 | Capture detailed optional negative feedback | Could | WP-6 | Optional negative-feedback capture verified at G6 as a Could-priority item; explicitly preserved as Could per source priority. |
| ELAB-01 | Measure operational response-time expectation | Should | WP-7 | Stakeholder reference-point measurement reported at G7 alongside BR-05, distinct scenario assertion retained; Should priority preserved. |
| SOW-SCOPE-READONLY | Do not write to a system of record | Constraint | WP-3 | Read-only behavior verified at G3 by Data Access & Freshness Steward; evidence shared with DISC-SCOPE-READONLY, distinct assertion retained. |
| SOW-SCOPE-PROHIBITED | Exclude prohibited subject matter | Constraint | WP-5 | Prohibited-subject-matter exclusion verified at G5 alongside BR-04, distinct scenario assertion retained. |
| SOW-ACCEPTANCE | Enforce contractual release acceptance conditions | Constraint | WP-1 | Frozen as the WP-1 acceptance spine by Program Authority Lead at G1; re-attested at G8 convergence with independent IV&V sign-off. |
| SOW-GOVERNANCE | Use required delivery governance constraints | Constraint | WP-8 | OQ-03 disposition (Azure DevOps versus GitHub reconciliation) required before the G8 governance baseline is set; Governance & Release Manager owns closure. |
| DISC-SCOPE-READONLY | Keep the first release read only | Constraint | WP-3 | Read-only first-release behavior verified at G3; distinct scenario assertion retained alongside SOW-SCOPE-READONLY. |

### Attestation

- Row count by category: BR (8) + NFR (5) + ARC (14, ARC-08 counted once) + DISC (6) + ELAB (1) + unnumbered (5) = **39**.
- Row count by work package: WP-1 (1) + WP-2 (10) + WP-3 (8) + WP-4 (3) + WP-5 (3) + WP-6 (4) + WP-7 (3) + WP-8 (7) = **39**.
- Row count by priority: Must (15) + Should (3) + Could (2) + Constraint (19) = **39**.
- **Total attestation: 39/39.** Every source scenario from `specs/features/Objective-statement-of-work.feature`, `specs/features/Architecture-docs-platform-constraints.feature`, and `specs/features/Transcripts-discovery-workshop-session-1.feature` appears exactly once as a primary row. No scenario is added, omitted, or silently collapsed.

## Explicit Scope Guard (Repeated at Close)

- No WBS has been selected. This is one of five competing variants awaiting side-by-side presentation with WBS-A, WBS-C, WBS-D, and WBS-E.
- No Ring 1 activity has started.
- No checklist, ring-status, program-status, or journal artifact was updated in producing this document.
- No cost or duration was estimated.
- No architecture, product, topology, model, runtime, database, or index was selected.
