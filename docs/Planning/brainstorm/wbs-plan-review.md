# Plan Review — Ring 0 Brainstorm Phase 2 (Competing WBS Set A–E)

**Reviewer:** Plan Reviewer Agent (independent, alternate-model review)
**Date:** 2026-08-28
**Scope:** DEC-008; `wbs-A-speed.md`; `wbs-B-depth.md`; `wbs-C-innovation.md`; `wbs-D-combined.md`; `wbs-E-ai-staffed.md`; `wbs-comparison.md`; all `specs/features/*.feature`; `.github/skills/brainstorming.md` §8; `.github/workspace-config.md`; `.github/skills/agent-execution-model.md`.
**Verdict:** REVISE (set) — one MAJOR in WBS-C plus comparison qualifications must be resolved before selection.
**Nature:** Advisory only. This review selects no WBS, starts no Ring 1, authorizes no architecture/product/topology/model/runtime/database/index/release/deployment, and edits no artifact other than this file.

> **Model Selector:** Not consulted — dispatch capability was not available in this session. Proceeded on the default review model; noted here per protocol.
> **Observability:** Per the explicit single-file constraint ("edit no other file"), no journal or trace-file append was performed. AGENT_TASK_START/END and REVIEW-entry intent is recorded inline in this section instead.

---

## Summary

All five variants share the exact DEC-008 eight-package scope, carry all 39 source scenarios exactly once, make no cost/duration/date estimate, select no architecture, and preserve the OQ and authorization critical paths. The set is **NOT READY** for selection because WBS-C misclassifies the priority of ARC-01..ARC-14 (MAJOR), two scenarios are placed in different work packages by different variants (MINOR), and two comparison claims overstate cross-variant uniformity (MINOR).

## Scores

| Dimension | Score (1-5) | Notes |
| --- | ---: | --- |
| Completeness | 5 | All 39 scenarios present once in every variant; WP scope identical; D documents cherry-picks + mitigations; E documents mirror + gaps. |
| Feasibility | 4 | Dependency-gate sequencing is sound and estimate-free; feasibility not undermined by the findings. |
| Risk Coverage | 4 | OQ-01/02/03 and authorization-before-grounding are hard gates in all five; risk tables present. |
| Governance Alignment | 3 | Strong overall, but WBS-C's ARC priority relabel conflicts with DEC-008's "priorities unchanged" assumption. |
| Clarity | 4 | Well-structured; two cross-variant WP-placement inconsistencies and two over-broad comparison claims reduce clarity. |
| **Overall** | **4** | Correctable; no CRITICAL finding. |

---

## Findings

### CRITICAL

- None. No variant violates the no-selection, no-Ring-1, no-estimate, or architecture-neutral boundaries; none adds, removes, splits, renames, or drops a source scenario.

### MAJOR

- [ ] **M-1 — WBS-C reprioritizes ARC-01..ARC-14 as `Must`.** In `wbs-C-innovation.md` → "39-Row Scenario Traceability Ledger," the Priority cell for all fourteen ARC rows (ARC-01 through ARC-14) reads **Must**, whereas WBS-A, WBS-B, WBS-D, and WBS-E label them **Constraint**. This contradicts four authorities: (a) `specs/features/Architecture-docs-platform-constraints.feature`, where ARC scenarios carry no MoSCoW tag and the file header declares them "authoritative controls, not target-architecture decisions"; (b) DEC-008 assumption "the approved 39-scenario source baseline and priorities remain unchanged"; (c) WBS-C's own "Scope Guard" and "Source Priority Statement," which treat ARC as authoritative constraints; and (d) the 15 Must / 3 Should / 2 Could / 19 Constraint split asserted by the comparison and the other four variants. It is also internally self-contradictory within WBS-C (ledger says Must; narrative says constraint). **Recommendation:** Change the Priority cell for ARC-01..ARC-14 to `Constraint` in the WBS-C ledger (ARC-08 remains one Scenario Outline). Coverage, WP mapping, and intent are otherwise intact; this is a label correction, not a rework.

### MINOR

- [ ] **m-1 — `SOW-ACCEPTANCE` is placed in different work packages across variants.** It maps to **WP-8** in `wbs-A-speed.md` ("Scenario Traceability Ledger") and `wbs-C-innovation.md` ("39-Row Scenario Traceability Ledger"), but to **WP-1** in `wbs-B-depth.md`, `wbs-D-combined.md`, and `wbs-E-ai-staffed.md`. DEC-008 fixes the eight-package scope but not the scenario→WP allocation, so this is not a scope breach; however, for a single fixed decomposition the divergence should be reconciled. WP-1 ("Authority and Acceptance Spine") and WP-8 ("Governance, Release Evidence, and Convergence") are each defensible homes. **Recommendation:** Adopt one placement across the set (or add a one-line note that the acceptance-spine vs release-evidence split is intentional), consistent with the WBS-B convergence re-attestation already used in B/D/E.

- [ ] **m-2 — `DISC-04` placement is an outlier in WBS-B.** `wbs-B-depth.md` "Scenario Traceability Ledger (39 rows)" maps DISC-04 ("State record-specific uncertainty without inventing an answer") to **WP-3**, while WBS-A, WBS-C, WBS-D, and WBS-E map it to **WP-4**. WP-4's title explicitly includes "…and Uncertainty," making WP-4 the more natural home for a record-specific uncertainty behavior; WBS-B itself cross-references it to BR-08 at G4 (a WP-4 gate). **Recommendation:** Align WBS-B to WP-4, or document why the location/source-integrity package (WP-3) is preferred.

- [ ] **m-3 — Comparison "Fixed Basis" claim is over-broad.** `wbs-comparison.md` → "Fixed Basis for Comparison" states categorically that all five retain "15 Must, 3 Should, 2 Could, and 19 Constraints" and that "No option … reprioritizes scope." That is contradicted by WBS-C's ledger (Finding M-1), which the same document later acknowledges under "Traceability, Priority, and Architecture Neutrality." **Recommendation:** Qualify the Fixed Basis statement to flag the WBS-C ARC classification as an open correction until M-1 is fixed, so the two paragraphs are consistent.

- [ ] **m-4 — Comparison does not surface the cross-variant WP-placement differences.** `wbs-comparison.md` asserts every option "uses the exact same eight packages" but never notes that `SOW-ACCEPTANCE` (m-1) and `DISC-04` (m-2) are assigned to different packages by different variants. A reader could assume identical scenario→WP mapping. **Recommendation:** Add a sentence clarifying that the eight-package scope is identical while two scenarios are homed differently by different variants (pending reconciliation).

### NIT

- [ ] **n-1 — Milestone-date columns intentionally omitted.** `.github/skills/brainstorming.md` §8.1/§8.3 templates include "milestone dates" and Start/End columns; all five variants correctly replace these with criteria-based, date-free milestones per the Ring 0 no-estimate boundary and DEC-008. Compliant and correct — recorded only so the deliberate template deviation is understood, not treated as a defect.
- [ ] **n-2 — WBS-E L-level label.** `wbs-E-ai-staffed.md` "Agent Mapping" labels the Program Manager agent "Background L1 lead agent," while `agent-execution-model.md` §1 lists Program Manager among L0 examples. The label is consistent with the `workspace-config.md` hierarchy (Program Manager shown as an L1 subagent under the human Program Executive), so no change is required.

---

## Verification Results (Requested Checks)

| Check | Result | Evidence |
| --- | --- | --- |
| Every variant uses the exact same WP-1..WP-8 scope | PASS | Identical eight-package tables in all five variants and `wbs-comparison.md` "Fixed Basis." |
| All 39 scenarios present exactly once per variant | PASS | Attestations 39/39 in A/B/C/D/E; BR 8 + NFR 5 + ARC 14 (ARC-08 one outline) + DISC 6 + ELAB 1 + 5 unnumbered = 39. |
| Correct scenario titles | PASS | Ledger titles match `specs/features/*.feature` exactly (spot-checked all BR/NFR/ARC/DISC/ELAB and the 5 unnumbered). |
| Correct priorities | FAIL (WBS-C only) | A/B/D/E correct (ARC = Constraint); WBS-C ledger marks ARC-01..14 as Must — Finding M-1. |
| Correct/consistent WP treatment | PARTIAL | Consistent except `SOW-ACCEPTANCE` (m-1) and `DISC-04` (m-2). |
| No cost/duration/date estimates | PASS | All five state stages/predecessor gates only; explicit "no cost or duration" scope guards. |
| WBS-A = speed/lean human staffing | PASS | `wbs-A-speed.md` lean 5-role multi-hat roster; deferral discipline. |
| WBS-B = specialized depth human staffing | PASS | `wbs-B-depth.md` 12 named roles, one lead/execute per WP, independent reviewers. |
| WBS-C = bounded innovation human staffing | PASS | `wbs-C-innovation.md` pods, Assumption Challenge Council, bounded EXP-* experiments. |
| WBS-D documents A/B/C cherry-picks + mitigations | PASS | "Combination Rationale" (three source tables) + "Side Effects Mitigated" table. |
| WBS-E = exact D mirror except staffing/control additions | PASS | "Explicit WBS-D Mirror Conformance" table; identical WP/ledger/gates/streams/milestones/experiments; adds capability-gap + HRC controls only. |
| WBS-E uses active agents only | PASS | All 11 mapped agents (program-manager, azure-architect, api-architect, solution-architect, responsible-ai, trace-collector, qei-engineer, ops-chief, security-reviewer, test-reviewer, business-owner) are Active=Yes in `.github/workspace-config.md`. |
| WBS-E top role = human Program Executive | PASS | "Human-vs-Agent Boundary" and Agent Mapping keep Program Executive human (Tier 3). |
| WBS-E other standing roles agent-staffed | PASS | All non-top recurring roles mapped to active agents. |
| WBS-E mandated human decisions preserved | PASS | OQ owners human; HRC-1..HRC-10 keep security/RAI/ATO/CAB/release/ADR/ring-gate/WBS-selection human. |
| OQ-01 blocks WP-3 freshness acceptance and WP-4 integration | PASS | A ("OQ Critical-Path Table"), B (G3/WP-4), C (hard-dependency 2 + M1), D (gate-discipline 2), E (gate-discipline 2). |
| OQ-02 blocks WP-5 | PASS | A/B/C/D/E all gate WP-5 routing/refusal completion on OQ-02. |
| OQ-03 blocks WP-8 baseline | PASS | A/B/C/D/E all gate the WP-8 governance baseline on OQ-03. |
| WP-2 precedes WP-4 integration | PASS | Pre-retrieval authorization is a hard predecessor to WP-4 in all five (A streams/risks; B G2; C hard-dependency 5; D/E gate-discipline 5). |

---

## Per-Option Verdicts

| Option | Verdict | Basis |
| --- | --- | --- |
| **WBS-A — Speed/Lean** | APPROVED (advisory) | Fully compliant; internally consistent. Note: `SOW-ACCEPTANCE`→WP-8 differs from B/D/E (m-1). |
| **WBS-B — Depth** | APPROVED (advisory) | Fully compliant; strongest separation of duties. Note: `DISC-04`→WP-3 outlier (m-2); `SOW-ACCEPTANCE`→WP-1 (m-1). |
| **WBS-C — Innovation** | REVISE | MAJOR M-1: ARC-01..14 priority relabeled Must in the ledger. All hard controls, coverage, and neutrality otherwise preserved. `SOW-ACCEPTANCE`→WP-8 (m-1). |
| **WBS-D — Combined** | APPROVED (advisory) | Fully compliant; documents cherry-picks and mitigations; sound hard-gate discipline. |
| **WBS-E — AI-Staffed** | APPROVED (advisory) | Exact D mirror; active agents only; human Program Executive top role; mandated human authorities preserved; AI capability-gap controls added without scope change. |

---

## Comparison Claim Verification & Corrections

| Comparison claim (`wbs-comparison.md`) | Assessment | Correction |
| --- | --- | --- |
| All five use the exact same eight packages | Accurate | — |
| All five cite all 39 scenario identifiers, ARC-08 as one outline | Accurate | — |
| "15 Must, 3 Should, 2 Could, 19 Constraints … No option … reprioritizes scope" (Fixed Basis) | Over-broad | Qualify per m-3 — contradicted by WBS-C ledger (M-1) until corrected. |
| WP-2 before WP-4; OQ-01/02/03 human gates preserved in all five | Accurate | — |
| "C's detailed ledger presents ARC rows as Must … documentation-classification inconsistency to resolve before any WBS is baselined" | Accurate | Matches M-1; keep, and reconcile with the Fixed Basis paragraph. |
| E = exact D scope, sequence, streams, milestones, gates, and 39-row ledger | Accurate | — |
| Same scenario→WP mapping across A–E (implied by "exact same eight packages") | Incomplete | Add note per m-4 — `SOW-ACCEPTANCE` and `DISC-04` are homed differently by different variants. |
| "D is a non-binding advisory baseline" | Acceptable (advisory) | Permissible orchestrator recommendation; no selection is made. |

---

## Strengths

- Uniform, estimate-free, architecture-neutral construction across all five variants with explicit scope guards.
- Hard, non-defaulting human gates for OQ-01/OQ-02/OQ-03 and pre-retrieval authorization in every variant.
- WBS-D's cherry-pick + side-effect-mitigation tables and WBS-E's capability-gap register and human-review checkpoints are thorough and traceable.
- The comparison already self-identifies the WBS-C ARC issue, indicating disciplined review hygiene.

## Recommended Next Steps

1. Correct WBS-C ledger Priority for ARC-01..ARC-14 to `Constraint` (resolves M-1).
2. Reconcile `SOW-ACCEPTANCE` (WP-1 vs WP-8) and `DISC-04` (WP-3 vs WP-4) placements across variants, or annotate the intentional differences (m-1, m-2).
3. Qualify the comparison's Fixed Basis claim and add the cross-variant WP-placement note (m-3, m-4).
4. Re-present the corrected set for human WBS selection.

---

**WBS selection readiness: NOT READY** — resolve MAJOR M-1 and comparison qualifications m-3/m-4 (and preferably m-1/m-2) before the human WBS-selection decision. This review is advisory only; it selects no WBS and does not start Ring 1.

> **Superseded by the Remediation Review below (2026-08-28).** The findings above are retained as the original record; the current disposition and readiness verdict are stated in the Remediation Review section.

---

## Remediation Review — 2026-08-28

**Reviewer:** Plan Reviewer Agent (independent, alternate-model re-review)
**Trigger:** Re-review of the corrected Ring 0 Phase 2 packet after remediation of the original findings.
**Re-read:** `wbs-A-speed.md`, `wbs-B-depth.md`, `wbs-C-innovation.md`, `wbs-D-combined.md`, `wbs-E-ai-staffed.md`, `wbs-comparison.md`, all `specs/features/*.feature`, and DEC-008 (`docs/Governance/decisions/decision-log.md`).
**Nature:** Advisory only. Selects no WBS, starts no Ring 1, authorizes no architecture/product/topology/model/runtime/database/index/release/deployment, and edits no artifact other than this file.

> **Model Selector:** Not consulted — dispatch capability was not available in this session. Proceeded on the default review model; noted here per protocol.
> **Observability:** Per the explicit single-file constraint, no journal or trace-file append was performed; AGENT_TASK_START/END and REVIEW-entry intent is recorded inline in this section.

### Prior-Finding Disposition

| Prior finding | Status | Evidence in corrected packet |
| --- | --- | --- |
| **M-1** — WBS-C reprioritizes ARC-01..ARC-14 as `Must` | **RESOLVED** | `wbs-C-innovation.md` "39-Row Scenario Traceability Ledger" now labels ARC-01 through ARC-14 all as `Constraint`, matching WBS-A/B/D/E, the WBS-C narrative Scope Guard / Source Priority Statement, and the comparison's 15 Must / 3 Should / 2 Could / 19 Constraint split. ARC-08 remains one Scenario Outline. Internal self-contradiction removed. |
| **m-1** — `SOW-ACCEPTANCE` homed in different WPs | **RESOLVED (annotated as intentional)** | `wbs-comparison.md` now states `SOW-ACCEPTANCE` is frozen in WP-1 and re-attested through WP-8 in B/D/E, while A/C place its primary ledger row in WP-8, and that both treatments preserve the acceptance-spine-to-release-convergence boundary. Placements verified: A→WP-8, B→WP-1, C→WP-8, D→WP-1, E→WP-1. The divergence is now a documented, defensible design difference, not an unexplained inconsistency. |
| **m-2** — `DISC-04` outlier in WBS-B (WP-3) | **RESOLVED** | `wbs-B-depth.md` ledger now maps DISC-04 to **WP-4** ("…verified at G4 and kept distinct from BR-08 while sharing its answer-integrity package"). DISC-04 is now consistently WP-4 across all five variants; the comparison confirms "`DISC-04` is consistently homed in WP-4 across the corrected set." |
| **m-3** — Comparison "Fixed Basis" over-broad | **RESOLVED** | With M-1 corrected, the comparison's "No option … reprioritizes scope" claim is now accurate; the ARC classification is consistent across the set and the two paragraphs no longer conflict. |
| **m-4** — Comparison omits cross-variant WP-placement differences | **RESOLVED** | `wbs-comparison.md` now explicitly states the eight-package scope is identical while surfacing the `SOW-ACCEPTANCE` (WP-1 vs WP-8) and `DISC-04` (WP-4) placement treatments. A reader can no longer assume identical scenario→WP mapping without qualification. |
| **n-1** — Milestone-date columns intentionally omitted | **OPEN (informational, no action)** | Still a deliberate, correct deviation for the Ring 0 no-estimate boundary. Not a defect. |
| **n-2** — WBS-E "L1 lead agent" label | **OPEN (informational, no action)** | Label remains consistent with the `workspace-config.md` hierarchy; no change required. |

### Targeted Re-Checks (as requested)

| Check | Result | Evidence |
| --- | --- | --- |
| WBS-B DISC-04 consistency | **PASS** | WBS-B DISC-04 → WP-4, aligned with A/C/D/E; cross-referenced to BR-08 at its WP-4 gate. |
| WBS-E advisory authority wording | **PASS** | WBS-E consistently confines agents to prepare/execute/recommend/advisory-review and forbids self-approval, OQ disposition, ADR/architecture/WBS selection, ring-gate pass, ATO, RAI sign-off, release, or CAB substitution. HRC-1..HRC-10 and the Human-vs-Agent Boundary keep every mandated authority human; the Program Executive "does not manufacture another authority's disposition." |
| Identical WP-1..WP-8 scope across all five | **PASS** | Eight-package tables identical in all five and in the comparison Fixed Basis. |
| All 39 scenarios present exactly once | **PASS** | Source features total 39 (14 ARC incl. ARC-08 outline + 17 SOW + 8 DISC); all five attest 39/39 with no duplicate/missing IDs. |
| Correct priorities (15 Must / 3 Should / 2 Could / 19 Constraint) | **PASS** | Now correct in all five, including the corrected WBS-C ledger. |
| OQ critical paths (OQ-01→WP-3/WP-4; OQ-02→WP-5; OQ-03→WP-8) | **PASS** | Preserved as hard human dispositions in all five. |
| WP-2 authorization precedes WP-4 integration | **PASS** | Pre-retrieval authorization remains a hard predecessor to WP-4 in all five. |
| No cost/duration/date estimates | **PASS** | No hour/day/week/month/FTE/sprint/currency/story-point tokens present; milestones are criteria-based and date-free. |

### Final Per-Option Verdict

| Option | Verdict | Basis |
| --- | --- | --- |
| **WBS-A — Speed/Lean** | **APPROVED (advisory)** | Fully compliant; internally consistent. `SOW-ACCEPTANCE`→WP-8 is a documented intentional treatment. |
| **WBS-B — Depth** | **APPROVED (advisory)** | Fully compliant; strongest separation of duties. DISC-04 corrected to WP-4; `SOW-ACCEPTANCE`→WP-1 documented. |
| **WBS-C — Innovation** | **APPROVED (advisory)** | M-1 resolved — ARC-01..14 now `Constraint`. Coverage, hard controls, and architecture neutrality intact. |
| **WBS-D — Combined** | **APPROVED (advisory)** | Fully compliant; documents cherry-picks and mitigations; sound hard-gate discipline. |
| **WBS-E — AI-Staffed** | **APPROVED (advisory)** | Exact D mirror; active agents only; human Program Executive top role; advisory-only agent authority with all mandated human authorities preserved. |

### Disposition

All prior CRITICAL/MAJOR/MINOR findings are RESOLVED; only two informational NITs remain (no action required). No new findings were introduced by the corrections. The set is internally consistent, estimate-free, architecture-neutral, and carries all 39 source scenarios with correct priorities.

**WBS selection readiness: READY** — the corrected packet is ready to present for the human WBS-selection decision. This review is advisory only; it selects no WBS and does not start Ring 1.
