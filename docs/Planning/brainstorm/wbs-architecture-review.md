# Ring 0 Phase 2 WBS Architecture-Neutrality Review

**Reviewer:** Architect Reviewer Agent  
**Date:** 2026-08-28  
**Scope:** Independent review of DEC-008, WBS-A, WBS-B, WBS-C, WBS-D, WBS-E, WBS comparison, all `specs/features/*.feature`, and `.github/skills/brainstorming.md` section 8.  
**Review posture:** Advisory only. No WBS is selected. Ring 1 is not started.  
**Model Selector note:** Required Model Selector consultation could not be performed because no subagent dispatch capability was available in the exposed tools. The review proceeded on the current Architect Reviewer model and records the skip as a process constraint.

## Findings

### CRITICAL

- None.

### MAJOR

- [ ] **WBS-C / 39-Row Scenario Traceability Ledger** — WBS-C lists ARC-01 through ARC-14 with priority `Must`, while `specs/features/Architecture-docs-platform-constraints.feature` declares them as platform control boundaries and DEC-008 treats named ARC standards as authoritative constraints, not source-priority Must requirements. WBS-C's own **Source Priority Statement** says ARC-01 through ARC-14 are authoritative constraints, so the ledger conflicts with both the source-priority model and its own narrative. **Recommendation:** Change the WBS-C ARC ledger priorities from `Must` to `Constraint`, preserving each ARC row as a distinct primary assertion and keeping ARC-08 counted once as a Scenario Outline.

- [ ] **wbs-comparison / Traceability, Priority, and Architecture Neutrality** — The comparison correctly identifies the WBS-C ARC priority classification inconsistency, but the artifact still presents the overall comparison as ready for human selection without making the correction a readiness condition. This leaves a documented source-priority breach inside one candidate option at the point of selection. **Recommendation:** Add a required correction before selection: WBS-C must align ARC row priorities to `Constraint`; the comparison should mark WBS-C as `BREACH - correction required` for priority preservation until fixed.

### MINOR

- [ ] **WBS-A / Work-Package Schedule** — WBS-A assigns Ring 1/Ring 2/Ring 3+ candidate placements to work packages while also stating Ring 1 has not started. The language is framed as planning placement and does not authorize delivery, but it is closer to forward planning than the other options. **Recommendation:** Keep the candidate language, and during comparison clarify that these are ring-placement assumptions for future planning only, not a Ring 1 handoff or execution commitment.

- [ ] **WBS-B / Scenario Traceability Ledger** — `SOW-ACCEPTANCE` is mapped to WP-1, while other options generally place release evidence convergence in WP-8 or freeze it in WP-1 and re-attest at WP-8. This is not an architecture breach because the acceptance spine can own contractual acceptance, but it could confuse release approval boundaries. **Recommendation:** If WBS-B remains selectable, clarify that WP-1 freezes the acceptance condition and WP-8 performs release-evidence convergence; no release approval is granted by either package.

- [ ] **WBS-E / Agent Mapping and Human Review Checkpoints** — WBS-E preserves human authority in the **Human-vs-Agent Boundary** and **Human Review Checkpoints** sections, but the **Work-Package Schedule** says the Test Reviewer / Quality Auditor "approves" G1. In an AI-staffed option, reviewer agents should not be described as final approvers where source authority or gate passage is implicated. **Recommendation:** Change agent gate language from "approves" to "reviews and recommends acceptance to the Human Program Executive or mandated human authority" wherever agent authority could be mistaken for a decision right.

### NIT

- [ ] **WBS-D and WBS-E / Model Selector consultation** — Both files record skipped Model Selector consultation because dispatch was unavailable. That is transparent and not a neutrality issue, but it should remain visible in the final Phase 2 packet so the human selector understands the review/tooling limitation.

## Per-Option Architecture-Neutrality Result

| Option | Result | Basis |
| --- | --- | --- |
| WBS-A | PASS | **Scope Guard** and **Architecture-Neutrality Statement** explicitly prohibit architecture, product, topology, component, model, runtime, database, index, release, or deployment choices. Named Microsoft/UHG standards are restated only because ARC sources name them. |
| WBS-B | PASS | **Explicit Scope Guard** and **Architecture-Neutrality Statement** preserve the same eight work packages, reject architecture/product/runtime/database/index selection, and label named ARC standards as inherited constraints. |
| WBS-C | BREACH | Architecture neutrality itself passes, but source-priority preservation breaches in the **39-Row Scenario Traceability Ledger** because ARC-01 through ARC-14 are listed as `Must` instead of `Constraint`. |
| WBS-D | PASS | **Scope Guard**, **Bounded Assumption-Challenge and Evidence Experiments**, and **Architecture-Neutrality Statement** prohibit mechanism, product, topology, component, model, runtime, database, or index selection. ARC standards are constraints only. |
| WBS-E | PASS WITH CONDITION | **Scope Guard**, **Human-vs-Agent Boundary**, and **Architecture-Neutrality Statement** preserve WBS-D's neutral plan and non-delegable human authority. Condition: revise agent "approves" wording so advisory agents cannot be read as final decision authorities. |
| wbs-comparison | BREACH | The comparison identifies WBS-C's inconsistency but does not convert that issue into a required correction before human selection. |

## Required Comparison Corrections

1. In `wbs-comparison.md`, mark WBS-C as `BREACH - correction required` for source-priority preservation until its ledger records ARC-01 through ARC-14 as `Constraint`.
2. Add an explicit readiness rule: no WBS may be selected until every candidate's scenario ledger preserves the source priority taxonomy: 15 Must, 3 Should, 2 Could, and 19 Constraints.
3. Clarify that WBS-A's ring placement labels are future planning candidates only and do not start Ring 1.
4. Clarify WBS-B's `SOW-ACCEPTANCE` treatment: WP-1 may freeze contractual acceptance conditions, but WP-8 must remain the release-evidence convergence boundary and neither package grants release approval.
5. Clarify WBS-E agent review verbs: agents may review, challenge, recommend, and prepare evidence; mandated human authorities approve, disposition, accept, select, pass gates, and authorize release.

## Control Preservation Checks

| Control | Status | Evidence |
| --- | --- | --- |
| Named ARC standards are authoritative constraints only | PRESERVED except WBS-C ledger classification | DEC-008 says no architecture/product/topology/component/model/runtime/database/index selection; WBS-A/B/D/E state named standards are constraints only. WBS-C narrative agrees, but its ledger priority cells must be corrected. |
| Source priorities remain intact | BREACH in WBS-C only | Source files establish BR/NFR Must/Should/Could, ARC platform controls, transcript priorities, and unnumbered constraints. A/B/D/E preserve 15 Must, 3 Should, 2 Could, 19 Constraints; WBS-C ledger labels ARC rows as Must. |
| Authorization before retrieval | PRESERVED | DEC-008, all WBS schedules, OQ/gate sections, and comparison preserve WP-2 before WP-4 retrieval/grounding/citation integration and reject post-retrieval filtering as the authorization control. |
| Location granularity | PRESERVED | DISC-01, DISC-04, and ARC-14 remain mapped to source/location integrity and uncertainty controls; no option permits group-to-location inference. |
| Nightly freshness truth | PRESERVED | ARC-11 and ARC-13 remain constraints; OQ-01 blocks WP-3 freshness acceptance and WP-4 integration across all WBS options. |
| Audit-vs-diagnostics separation | PRESERVED | BR-06/DISC-03 audit retention and ARC-07 diagnostic payload exclusion are kept as separate obligations; C/D/E include explicit experiments rejecting collapsed log-plane evidence. |
| Human OQ disposition | PRESERVED | OQ-01, OQ-02, and OQ-03 remain human/business or human/governance dispositions across all options; preparatory work may proceed, blocked outcomes may not. |
| Release approval boundaries | PRESERVED with WBS-B clarification recommended | DEC-008 and all options state no release is authorized. ARC-12's stronger release gate remains intact. WBS-B should clarify the WP-1/WP-8 split for `SOW-ACCEPTANCE` to avoid confusing acceptance-spine ownership with release approval. |
| WBS-E advisory roles vs decision authority | PRESERVED with wording condition | WBS-E explicitly says agents cannot approve evidence, resolve OQs, accept ADRs, select architecture or WBS, pass ring gates, sign assessments, grant ATO, approve release, or replace CAB authority. The G1 "approves" wording should be revised to advisory review language. |

## Safe Selection Constraints

- The human selector may not select any WBS until WBS-C's ARC priority classification is corrected or WBS-C is explicitly excluded from consideration due to the documented breach.
- Selection must preserve DEC-008's eight-package scope and 39 distinct scenario assertions; no option may add, remove, split, rename, collapse, or reprioritize source scope.
- Selection must not be treated as architecture, product, topology, component, model, runtime, database, index, release-method, deployment, staffing baseline, schedule, or Ring 1 authorization.
- Named ARC standards may constrain later design, but the WBS selection may not convert them into newly chosen implementation architecture.
- OQ-01, OQ-02, and OQ-03 must remain accountable human dispositions, and no agent, specialist, reviewer, or plan artifact may infer answers while they are pending.
- WP-2 authorization-before-retrieval must remain a hard predecessor to WP-4 retrieval/grounding/citation integration.
- ARC-12 production release boundaries must remain stronger than SOW ATO-submission wording: security signoff, responsible AI signoff, ATO submitted and accepted, CAB approval, and rollback plan before production deployment.
- In WBS-E, agent role mappings may prepare evidence and recommendations only; advisory/reviewer agents must not become decision authorities.

## WAF Assessment

| Pillar | Score | Key Finding |
| --- | --- | --- |
| Security | 4/5 | Strong preservation of pre-retrieval authorization, tenant/residency constraints, no static credentials, diagnostic exclusion, and human security approvals. WBS-C priority classification needs correction to avoid weakening constraint traceability. |
| Reliability | 4/5 | OQ gates, release evidence, rollback constraint, and availability measurement are preserved. Selection should wait for priority correction. |
| Performance Efficiency | 4/5 | Response-time and availability remain Should-level evidence, not hidden Must release gates or architecture commitments. |
| Operational Excellence | 4/5 | Audit, diagnostics, governance, IV&V, RAI, ATO, CAB, and ring-gate boundaries are consistently represented. WBS-E needs clearer advisory wording for agent reviews. |
| Cost Optimization | 3/5 | Phase 2 intentionally avoids cost/duration estimates; options compare staffing shapes without choosing resources. Cost optimization cannot be fully assessed until Ring 1 planning. |
| **Overall WAF** | **3.8/5** | Architecture-neutral planning is mostly sound, but selection should not proceed while a candidate ledger contains source-priority drift. |

## ADR / Decision Compliance

- **ADRs / decisions reviewed:** DEC-008 from `docs/Governance/decisions/decision-log.md`.
- **Conformance:** PARTIAL.
- **Compliant elements:** All WBS options use DEC-008's eight work packages, maintain no-selection status, preserve OQ critical paths, preserve authorization-before-grounding, and avoid implementation architecture choices.
- **Non-compliant element:** WBS-C's ARC priority labels conflict with DEC-008's assumption that source priorities remain unchanged and that ARC standards are authoritative constraints only.
- **Missing ADRs:** None required at Ring 0 Phase 2 because no architecture, product, topology, component, model, runtime, database, index, release, or deployment decision should be made here.

## Architectural Strengths

- The WBS family consistently protects the Ring 0 boundary: advisory planning only, no WBS selection, no Ring 1 start, and no implementation architecture commitment.
- Authorization-before-retrieval is repeatedly encoded as a hard predecessor, not a post-retrieval filtering option.
- The options preserve the regulated-healthcare risk focus from DEC-008: location-level interpretation, truthful amendment freshness, refusal handling, audit retention, diagnostic exclusion, and human release authority.
- WBS-E's human-vs-agent boundary is substantially stronger than a simple role substitution: it names non-delegable human decisions and adds human review checkpoints for OQs, security architecture, RAI/ATO, release, ADR/architecture selection, ring gates, and WBS selection.

## WBS Selection Readiness

**WBS selection readiness: NOT READY**

Reason: WBS-C has a source-priority preservation breach in its scenario ledger, and the comparison does not yet elevate that breach into a pre-selection correction. The set becomes architecture-neutral selection-ready after the required comparison corrections above are applied or WBS-C is explicitly removed from the selectable set by human decision.

## Advisory Conclusion

No CRITICAL architecture-neutrality failure was found. The WBS set is largely compliant with DEC-008 and Ring 0 architecture neutrality, but selection should pause until WBS-C's ARC priority classification and the comparison readiness language are corrected. This review is advisory only and does not select a WBS, authorize Ring 1, approve architecture, or create a release/deployment commitment.

## Remediation Review - 2026-08-28

**Reviewer:** Architect Reviewer Agent  
**Scope re-reviewed:** `docs/Planning/brainstorm/wbs-A-speed.md`; `docs/Planning/brainstorm/wbs-B-depth.md`; `docs/Planning/brainstorm/wbs-C-innovation.md`; `docs/Planning/brainstorm/wbs-D-combined.md`; `docs/Planning/brainstorm/wbs-E-ai-staffed.md`; `docs/Planning/brainstorm/wbs-comparison.md`; `specs/features/*.feature`; DEC-008 in `docs/Governance/decisions/decision-log.md`; and this existing review.  
**Review posture:** Advisory remediation review only. No WBS is selected. Ring 1 is not started. No architecture, product, topology, component, model, runtime, database, index, release, or deployment commitment is approved or implied.  
**Trace note:** The required explicit trace-emission tool was not available in the exposed tool set. This section records the review start/end and outcome inside the only user-authorized editable artifact.

### Remediation Status

| Prior Finding | Status | Remediation Review Result |
| --- | --- | --- |
| WBS-C ARC-01 through ARC-14 ledger priorities listed as `Must` | RESOLVED | WBS-C now lists ARC-01 through ARC-14 as `Constraint` in the 39-row ledger, with ARC-08 counted once as a Scenario Outline. This now aligns with the platform-constraints feature file, DEC-008, and the WBS-C Source Priority Statement. |
| `wbs-comparison.md` readiness claims did not condition selection on WBS-C correction | RESOLVED | The comparison now states all five options preserve the 15 Must / 3 Should / 2 Could / 19 Constraint taxonomy and names ARC scenarios as authoritative constraints only. That claim now aligns with the corrected WBS-C ledger. |
| WBS-A ring-placement labels might imply Ring 1 start | RESOLVED | WBS-A still uses future ring-placement labels, but its Scope Guard, status, and schedule language frame them as planning predecessors/candidates only. No Ring 1 handoff or execution commitment is made. |
| WBS-B `SOW-ACCEPTANCE` placement could confuse release boundaries | RESOLVED | WBS-B now states `SOW-ACCEPTANCE` is frozen in WP-1 and re-attested at convergence, while release evidence remains in WP-8. No release approval is granted. |
| WBS-E agent reviewer verbs could imply agent decision authority | OPEN | WBS-E materially strengthens the Human-vs-Agent Boundary and HRC-1 through HRC-10, and G1 now says the Test Reviewer / Quality Auditor "reviews and recommends acceptance to the Human Program Executive." However, the Work-Package Schedule still says G2 evidence is "independently accepted by the Security Reviewer" and G4/G5 evidence is "independently accepted" without naming the mandated human acceptance authority. Milestones also use "G2 closes" and similar closure language for agent-reviewed evidence. These residual verbs can still be read as agent acceptance rather than advisory recommendation under human authority. |
| Model Selector consultation skipped in WBS-D/WBS-E and this review | RESOLVED AS DISCLOSED | The skip is transparently recorded as a tooling limitation and does not create an architecture-neutrality breach because no model assignment, architecture, or implementation decision is made. |

### Corrected Packet Checks

| Check | Status | Evidence |
| --- | --- | --- |
| WBS-C ARC-01 through ARC-14 are `Constraint` | PASS | WBS-C ledger rows for ARC-01 through ARC-14 now show `Constraint`; ARC-08 remains one Scenario Outline. |
| Comparison readiness claims align with corrected ledgers | PASS | `wbs-comparison.md` states all five preserve 39 scenarios as 15 Must, 3 Should, 2 Could, and 19 Constraints, and this is now consistent with WBS-A through WBS-E. |
| WBS-E reviewer verbs are advisory with human authority | BREACH | The global boundary and HRC tables are advisory/human-authority aligned, but residual schedule and milestone wording still uses reviewer/evidence "accepted" and gate "closes" language without consistently tying acceptance to mandated human authority. |
| No architecture/product/topology/component/model/runtime/database/index commitment exists | PASS | All five WBS artifacts and the comparison explicitly state that named ARC standards are source constraints only and that no architecture, product, topology, component, model, runtime, database, or index is selected. Search did not identify a conflicting implementation commitment in the reviewed packet. |
| No WBS selected and Ring 1 not started | PASS | All five WBS alternatives and the comparison remain marked not selected or human-choice pending and state Ring 1 has not started. |

### Final PASS/BREACH by Option

| Option | Final Result | Basis |
| --- | --- | --- |
| WBS-A | PASS | Preserves the eight-package scope, 39/39 source coverage, priority taxonomy, OQ gates, authorization-before-retrieval dependency, and architecture-neutral non-commitment posture. Future ring labels are planning candidates only. |
| WBS-B | PASS | Preserves specialist human staffing, independent review, 39/39 traceability, ARC constraints, and release-boundary separation. `SOW-ACCEPTANCE` treatment is acceptable because WP-1 freezes the condition and WP-8 remains the convergence boundary. |
| WBS-C | PASS | Prior ARC priority breach is corrected. ARC-01 through ARC-14 are `Constraint`, ARC-08 is counted once, experiments are bounded to evidence, and no implementation mechanism is selected. |
| WBS-D | PASS | Combined plan preserves A/B/C controls without adding scope or implementation commitments. Human OQs, independent review, and bounded evidence probes remain intact. |
| WBS-E | BREACH | Scope, traceability, human checkpoints, and architecture neutrality mostly pass, but residual agent reviewer/gate wording still permits an interpretation that agents accept evidence or close gates. Under Human-in-the-Loop Full Governance, those verbs must consistently be advisory and tied to mandated human acceptance authority. |
| WBS comparison | PASS | The comparison now aligns with corrected source-priority and architecture-neutrality claims and remains non-binding advisory text. Its WBS-E summary correctly describes agents as preparing evidence and humans retaining accountable decisions, but selection readiness remains blocked by the underlying WBS-E wording breach. |

### Safe Selection Constraints

- A human selector may consider WBS-A, WBS-B, WBS-C, or WBS-D only as Ring 0 WBS alternatives; selection still must not start Ring 1 or authorize implementation.
- WBS-E must not be selected until all agent reviewer, gate, and evidence-acceptance verbs are revised so agents only review, challenge, prepare, recommend, or report, and mandated human authorities accept, approve, disposition, pass gates, select, sign, grant ATO, authorize release, and make architecture decisions.
- Any WBS selection must preserve DEC-008's eight-package scope and all 39 distinct source scenario assertions: 15 Must, 3 Should, 2 Could, and 19 Constraints.
- ARC-01 through ARC-14 must remain authoritative constraints only. ARC-08 must remain one Scenario Outline, not six added scenarios or product selections.
- Named platform standards may constrain later design, but WBS selection must not become an architecture, product, topology, component, model, runtime, database, index, release-method, deployment, staffing baseline, schedule, or cost decision.
- OQ-01, OQ-02, and OQ-03 must remain accountable human dispositions. Preparatory evidence may proceed where the WBS permits it, but freshness acceptance, WP-4 integration, refusal/routing completion, and governance baseline closure may not proceed by assumption.
- WP-2 authorization before retrieval must remain a hard predecessor to WP-4 retrieval, grounding, and citation integration in any selected or modified WBS.
- ARC-12 remains the stronger production release gate: security signoff, responsible AI signoff, ATO submitted and accepted, CAB approval, and documented rollback plan before production deployment.

### WBS Selection Readiness

**WBS selection readiness: NOT READY**

Reason: WBS-C and comparison remediation are sufficient, and WBS-A/B/D pass the architecture-neutrality and source-priority checks. WBS-E still has an open governance-authority wording breach because agent reviewer and gate language is not consistently advisory. The packet becomes WBS-selection-ready after WBS-E is either corrected or explicitly excluded from the selectable set by a human authority. This review does not select a WBS and does not start Ring 1.

## Final Closure Review - 2026-08-28

**Reviewer:** Architect Reviewer Agent  
**Scope re-reviewed:** `docs/Planning/brainstorm/wbs-E-ai-staffed.md`; the corrected Phase 2 packet (`wbs-A-speed.md`, `wbs-B-depth.md`, `wbs-C-innovation.md`, `wbs-D-combined.md`, `wbs-E-ai-staffed.md`, `wbs-comparison.md`, and `comparison-matrix.md`); and this existing architecture review.  
**Review posture:** Final narrow closure review only. No WBS is selected. Ring 1 is not started. No architecture, product, topology, component, model, runtime, database, index, release, deployment, scope, priority, schedule, or cost commitment is approved or implied.

### Prior Open Finding Status

| Prior Open Finding | Final Status | Closure Evidence |
| --- | --- | --- |
| WBS-E agent reviewer verbs could imply agent decision authority | RESOLVED | WBS-E G1 through G8 now describe agents as preparing, reviewing, recommending disposition, demonstrating, reporting, or assembling evidence, while the Human Program Executive, accountable human business owner, mandated human authority, human governance authority, and other mandated human authorities record acceptance, dispositions, review, or release-denial boundaries. M1 through M8 likewise assign G1-G8 acceptance, OQ disposition, and G8 disposition recording to humans while agents verify, recommend, evidence, review, demonstrate, report, or re-attest. |

### Final Closure Checks

| Check | Final Result | Basis |
| --- | --- | --- |
| G1-G8 schedule semantics in WBS-E preserve human authority | PASS | G1 routes agent review to the Human Program Executive; G2, G4, and G6 require mandated human acceptance; G3 and G5 require accountable human OQ disposition and evidence acceptance; G7 requires Human Program Executive review; G8 requires mandated human dispositions and explicitly grants no release authorization. |
| M1-M8 milestone semantics in WBS-E preserve human authority | PASS | M1-M8 consistently state that humans record acceptance, dispositions, or review, while agents verify, recommend, evidence, review, demonstrate, report, or re-attest. No milestone grants an agent approval, gate-passing, WBS-selection, release, ATO, responsible-AI, ADR, or architecture-selection authority. |
| Agent approval ambiguity | PASS | The Human-vs-Agent Boundary and HRC-1 through HRC-10 explicitly prohibit agents from approving evidence, resolving OQs, accepting ADRs, selecting architecture or WBS, passing ring gates, granting ATO, signing responsible-AI assessment, approving release, or substituting for CAB or other mandated human authorities. |
| Scope and priority preservation | PASS | The corrected packet preserves the same eight work packages, all 39 source scenarios, ARC-08 as one Scenario Outline, and the 15 Must / 3 Should / 2 Could / 19 Constraint taxonomy. No option adds, removes, splits, renames, collapses, or reprioritizes source scope. |
| Architecture commitment | PASS | WBS-A through WBS-E and the comparison maintain architecture-neutral status. Named Microsoft/UHG platform standards remain authoritative source constraints only and are not converted into architecture, product, topology, component, model, runtime, database, index, release-method, deployment, staffing baseline, schedule, or cost selections. |

### Final PASS/BREACH by Option

| Option | Final Result | Basis |
| --- | --- | --- |
| WBS-A | PASS | Preserves eight-package scope, 39/39 source coverage, source-priority taxonomy, OQ critical paths, authorization-before-retrieval, and architecture-neutral planning language. Future ring labels remain planning candidates only and do not start Ring 1. |
| WBS-B | PASS | Preserves specialist human staffing, independent review, 39/39 traceability, ARC constraints, source priorities, and release-boundary separation. `SOW-ACCEPTANCE` remains frozen in WP-1 and re-attested through WP-8 without granting release approval. |
| WBS-C | PASS | Prior ARC priority breach remains corrected: ARC-01 through ARC-14 are `Constraint`, ARC-08 is one Scenario Outline, experiments are bounded to evidence, priorities are preserved, and no implementation mechanism is selected. |
| WBS-D | PASS | Combined human plan preserves A/B/C controls without scope expansion or implementation commitment. OQ-01 through OQ-03 remain human dispositions, and bounded evidence probes cannot supply approvals or architecture choices. |
| WBS-E | PASS | WBS-E now makes agents advisory and evidence-producing while mandated humans remain acceptance and disposition authorities. G1-G8 and M1-M8 no longer leave residual agent approval ambiguity, and the closing status remains NOT SELECTED with Ring 1 not started. |
| WBS comparison | PASS | The comparison aligns with the corrected ledgers, preserves 15 Must / 3 Should / 2 Could / 19 Constraints, keeps all options non-binding, and does not select a WBS or authorize architecture or Ring 1. |

WBS selection readiness: READY

This final closure review is advisory only. It verifies that the Phase 2 packet is ready for human WBS selection review; it does not select a WBS, start Ring 1, pass a ring gate, approve architecture, or authorize release or deployment.