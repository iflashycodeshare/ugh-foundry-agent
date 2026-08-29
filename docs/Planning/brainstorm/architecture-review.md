# Ring 0 Brainstorm Phase 1 Architecture Review

**Reviewer:** Architect Reviewer Agent  
**Date:** 2026-08-28  
**Scope:** Independent review of [model-A-decomposition.md](model-A-decomposition.md), [model-B-decomposition.md](model-B-decomposition.md), [model-C-decomposition.md](model-C-decomposition.md), [comparison-matrix.md](comparison-matrix.md), all feature specs in [specs/features](../../../specs/features), and [.github/skills/brainstorming.md](../../../.github/skills/brainstorming.md).  
**Producer models:** Claude Opus 4.8, GPT-5.6 Sol, Grok 4.6.  
**Reviewer model distinction:** Architect Reviewer is distinct from the listed producer roles. Model Selector subagent consultation was not available as an executable tool in this session; review proceeded with the active Architect Reviewer context.  
**Phase boundary:** Ring 0 Phase 1 review only. No DP-4 selection, Phase 2 execution, WBS, ADR, architecture model, Ring 1 start, issue creation, commit, or push is performed.

## Findings

### CRITICAL

- None.

### MAJOR

- None.

### MINOR

- **C options / authority timing** — [model-C-decomposition.md](model-C-decomposition.md) sections `Strategy C1: Least Cost / Risk / constraint treatment`, `Strategy C2: Shortest Time to Deliver / Outcome-oriented capability / work packages`, and `Strategy C3: Most Comprehensive Scope / Outcome-oriented capability / work packages` repeatedly use freeze/closure language for OQ-01/OQ-02/OQ-03. The intent appears to be accountable disposition, not agent-owned resolution, but in Ring 0 Phase 1 this can be misread as closing business interpretation questions before DP-4. **Recommendation:** In the matrix or any future synthesis, restate these as required human-disposition inputs before Ring 1 planning is baselined, not as decisions made by the decomposition.
- **Comprehensive options / Should treatment** — [model-C-decomposition.md](model-C-decomposition.md) sections `C3-PERF`, `C3 Ring 0-5 mapping`, and [comparison-matrix.md](comparison-matrix.md) sections `Summary Grid` and `Option Assessments` describe C3 as keeping Should performance/availability in the first-release quality bar. This is acceptable as a comprehensive option only if BR-05/NFR-03/ELAB-01 remain Should and are not converted into Must release blockers. **Recommendation:** Add a synthesis guard that any selected hybrid may choose earlier Should measurement, but source priority remains Should unless the human explicitly changes scope.
- **Release-gate wording / timing clarity** — [model-A-decomposition.md](model-A-decomposition.md) `A3 Ring Mapping`, [model-B-decomposition.md](model-B-decomposition.md) `B3 Ring 0-5 Mapping`, and [model-C-decomposition.md](model-C-decomposition.md) `C1/C2/C3 Ring 0-5 mapping` split release evidence across Rings 4 and 5. This does not breach ARC-12 because each option says no go-live or release authorization occurs without the required evidence, but future planners could confuse evidence preparation with approval. **Recommendation:** Preserve the distinction: readiness evidence may be prepared earlier; production authorization remains externally approved and all ARC-12 gates must be satisfied before deployment.

### NIT

- **Matrix scoring presentation** — [comparison-matrix.md](comparison-matrix.md) `Scoring Method` gives all options architecture-neutrality score 5 and `Boundary result` PASS. This is supported by this review, but the matrix would be stronger if it named the actual breach tests beside the scores. **Recommendation:** Carry forward the PASS/BREACH table in this review when presenting DP-4 materials.
- **Scenario-count explanation** — [comparison-matrix.md](comparison-matrix.md) `Requirement Coverage` correctly treats ARC-08 as one Scenario Outline and retains overlapping read-only rows. Future summaries should continue to preserve this count rule to avoid accidental 44-count or 38-count drift.

## Overall Assessment

**Verdict:** PASS WITH CONDITIONS  
**DP-4 readiness:** READY

The nine options and the candidate hybrid are architecture-neutral at Ring 0 Phase 1. They treat named services and standards as source-imposed ARC constraints, not as new architectural selections; they do not select components, topology, model, runtime, database, index, or deployment design. The conditions above are wording and governance guards for the next presentation step, not blockers to human DP-4 review.

## Per-Option PASS/BREACH Review

| Option | Architecture neutrality | Authoritative constraint handling | NFR/control completeness | Contradiction/risk treatment | Premature product/topology commitments | Result |
| --- | --- | --- | --- | --- | --- | --- |
| A1 Least Cost | Uses CAP outcomes, not components. | ARC-01..14 marked as constraints in `0. Reading Notes and Constraint Register`; coverage ledger maps all. | NFR-01..05 covered; Shoulds measured/reported. | Explicit T-AUTHZ, T-CITE, T-FRESH, T-AUDIT, T-GATE handling. | Only source-restated Microsoft/UHG standards. | PASS |
| A2 Shortest Time | Parallel streams are sequencing only. | ARC constraints carried through `A2 Coverage Map`. | NFR-01..05 covered; BR-05/NFR-03 fast-follow measurement remains Should. | Calls authorization->grounding->IV&V->gates irreducible. | No database, index, model, runtime, or topology selected. | PASS |
| A3 Most Comprehensive | Evidence depth, not target design. | ARC restatement and coverage ledger preserve constraints. | NFR-01..05 fully evidenced; Could delivered but labeled Could. | Strongest A treatment of citation leakage, location ambiguity, freshness, audit/diagnostic split. | Threat model, RAI, IV&V are activities, not products. | PASS |
| B1 Least Cost | Outcome increments avoid mechanism choices. | Named standards labeled `AUTHORITATIVE CONSTRAINT - not a proposed commitment`. | NFR-01..05 covered; optional feedback stageable. | Identifies evidence-collapse risk and separate assertions. | No extra product/service choices beyond source. | PASS |
| B2 Shortest Time | Thin path plus streams are capability/evidence constructs. | Boundary-first path treats ARC controls as non-negotiable. | NFR-01..05 covered; Should metrics explicit. | Handles parallel drift, nightly freshness, and gate non-bypass. | No dates, staffing, topology, datastore, index, model, runtime. | PASS |
| B3 Most Comprehensive | Assurance depth only. | ARC controls covered in B3-E2/E3/E8 and final ledger. | NFR-01..05 covered with operational evidence. | Covers failure/recovery/misuse/audit durability risks. | No component or product chosen beyond ARC source restatement. | PASS |
| C1 Least Cost | Obligation families are neutral. | Authoritative named-control restatement is explicit. | NFR-01..05 covered; Should/Could deferred-not-dropped. | Good OQ-01/OQ-02/OQ-03 tracking, but freeze wording needs guard. | No mechanism/topology/database/model/runtime selection. | PASS |
| C2 Shortest Time | Parallel obligation families are sequencing. | ARC-08 and governance standards are restated only. | NFR-01..05 covered; gate time treated as non-compressible. | Best fast-path tension treatment; OQ closure must remain human-owned. | No new named products or topology. | PASS |
| C3 Most Comprehensive | Separate evidence obligations remain neutral. | ARC controls distinct from design choices. | NFR-01..05 covered; Shoulds may be early but remain Should. | Strongest source-obligation separation and OQ disposition posture. | No implementation mechanism or topology selected. | PASS |
| Candidate Hybrid | Combines C2/B2/A2/A3/B3/C3 posture only. | Explicitly keeps named standards as constraints. | Retains BR/NFR/ARC/DISC coverage and release gates. | Selects the strongest tension treatments without resolving business choices. | Explicitly forbids product, topology, component, model, runtime, database, index, staffing, date, or delivery commitment. | PASS |

## Authoritative ARC/NFR Verification

| Obligation | Source requirement | Review result | Evidence references |
| --- | --- | --- | --- |
| ARC-01 | Microsoft Entra ID only. | Authoritative obligation, not optional design. | [Architecture-docs-platform-constraints.feature](../../../specs/features/Architecture-docs-platform-constraints.feature) `Accept Microsoft Entra ID only`; A `Constraint Register`; B `Coverage Map`; C `Authoritative named-control restatement`. |
| ARC-02 | Managed identity; no stored secrets/static bearer tokens. | Authoritative obligation, not credential design choice. | Platform feature `Disallow static application credentials`; A `CAP-IDENT`; B `B1/B2/B3 boundary`; C `C*-AUTH`. |
| ARC-03 | Authorization before retrieval; no post-retrieval filtering as control. | Authoritative obligation and correctly elevated as a controlling dependency. | Platform feature `Evaluate authorization before retrieval`; A `T-AUTHZ-TIMING`; B `boundary-first request path`; C `Access-before-retrieval family`. |
| ARC-04 | US Azure regions for processing/storage. | Authoritative residency boundary, not topology selection. | Platform feature `Keep processing and storage in United States Azure regions`; all options' boundary sections. |
| ARC-05 | UHG tenant boundary. | Authoritative containment boundary. | Platform feature `Prevent customer data from leaving the tenant`; A/B/C containment mappings. |
| ARC-06 | No training/fine-tuning on customer data. | Authoritative model-governance prohibition. | Platform feature `Prohibit training and fine tuning`; A `CAP-BOUNDARY`; B `B3-E3`; C `C*-BND`. |
| ARC-07 | Provider payloads excluded from diagnostic logging. | Authoritative diagnostic control, separate from audit retention. | Platform feature `Exclude provider payloads from diagnostic logging`; A `T-AUDIT-DIAG`; B ledger row 32; C `C*-BND`. |
| ARC-08 | Approved standards for capability categories. | Source-restated standards only; no new selection detected. | Platform feature `Use the approved platform service for each capability`; A `Constraint Register`; B `Named standards` note; C `Authoritative named-control restatement`; matrix `Boundary rule applied`. |
| ARC-09 | Model on UHG AI allowlist. | Authoritative governance obligation; no model selected for implementation. | Platform feature `Restrict model use to the approved allowlist`; A `CAP-GOV`; B `B*-E6/E8`; C `C*-REL`. |
| ARC-10 | CAB approval and evaluation baseline before model-version change. | Authoritative change-control obligation. | Platform feature `Govern a model version change`; A `CAP-GOV`; B coverage ledger; C `C*-REL`. |
| ARC-11 | Data sources use defined read-only/nightly modes. | Authoritative access-mode obligation, not data architecture. | Platform feature `Access all approved data sources using their defined modes`; A `CAP-DATA`; B `B*-E3`; C `C*-SRC`. |
| ARC-12 | Security, RAI, ATO accepted, CAB, rollback before production deployment. | Authoritative release gate. Evidence staging is allowed; approval is not assumed. | Platform feature `Enforce all production release gates`; A/B/C release mapping; matrix `Explicit Scope Guard`. |
| ARC-13 | No intra-day amendment freshness claim. | Authoritative truthfulness constraint. | Platform feature `Do not claim intra-day amendment freshness`; A `T-FRESH-CONFLICT`; B `Critical tension`; C `C*-FRESH/SRC`. |
| ARC-14 | Preserve location-level contract context. | Authoritative answer-integrity obligation. | Platform feature `Guard against location-level misinterpretation`; A `T-LOCATION-GROUND`; B `B*-E4`; C `C*-ANS`. |
| NFR-01 | Processing/storage in United States regions. | Authoritative Must NFR. | [Objective-statement-of-work.feature](../../../specs/features/Objective-statement-of-work.feature) `Keep processing in United States regions`; all option ledgers. |
| NFR-02 | Provider/member data remains within UHG tenant. | Authoritative Must NFR. | SOW feature `Keep provider and member data within the UHG tenant`; all option ledgers. |
| NFR-03 | 99.5% business-hours availability. | Should NFR retained in all options; not dropped. | SOW feature `Meet business-hours availability target`; A `CAP-AVAIL`; B `B*-E5/E6`; C `C*-PERF`. |
| NFR-04 | Responsible AI assessment before production. | Authoritative Must release gate. | SOW feature `Require responsible AI assessment before production`; release mappings across A/B/C. |
| NFR-05 | Security review and ATO before go-live. | Authoritative Must release gate. | SOW feature `Require security review and ATO before go-live`; A/B/C `CAP-RELEASE` / `REL` sections. |

## Named Commitment Detection

| Category checked | Result | Notes |
| --- | --- | --- |
| Named products/services beyond source restatement | PASS | References to Microsoft Entra ID, Microsoft Foundry hosted agents, Azure Key Vault, Azure Monitor/Application Insights, Bicep, Azure DevOps Boards/Repos/Pipelines, CAB, ATO, and the UHG AI allowlist are all present in source ARC/SOW constraints or governance wording. No extra named product/service is introduced as a design choice. |
| Components or service decomposition | PASS | CAP-*, E*, and C*- packages are stated as outcomes, evidence streams, or obligation families, not runtime components. |
| Deployment topology or region layout | PASS | Options restate US/US Azure residency only; no single-region/multi-region, network, subscription, environment, or hosting topology is selected. |
| Database/index/search strategy | PASS | No database, vector index, search index, storage engine, schema, embedding store, or retrieval algorithm is selected. |
| Model/runtime choice | PASS | No implementation model, model version, agent runtime, orchestration framework, or execution host is selected beyond the ARC-08/09 allowlist and hosted-agent standards. |
| Hidden architecture pattern commitment | PASS | `parallel streams`, `acceptance spine`, `control envelope`, and `obligation families` are planning constructs; none requires a specific topology or integration pattern. |

## Key Tension Review

| Tension | Required control interpretation | Review result | Strongest evidence |
| --- | --- | --- | --- |
| Pre-retrieval authorization | ARC-03 and DISC-02 require authorization before retrieval; BR-03 result restriction alone is insufficient. | Correctly treated as controlling and non-parallelizable before grounded/cited answers. | A `T-AUTHZ-TIMING`; B `boundary-first request path`; C `C*-AUTH`. |
| Citation leakage | BR-02 citations must not expose source IDs outside authorized BU scope. | Explicit in A and hybrid; implicit but adequate in B/C through boundary-first dependencies. | A `T-CITE-LEAK`; matrix `Unique insights` and candidate hybrid. |
| Location granularity | DISC-01/ARC-14 require location-level answers and no group-level inference. | Covered in all options; comprehensive options provide stronger edge/ambiguity treatment. | A `T-LOCATION-GROUND`; B `B3-E4`; C `C3-ANS`. |
| Nightly freshness | ARC-11 nightly amendment mode and ARC-13 no intra-day claim constrain DISC-05. | Correctly handled as truthful freshness context plus human/business disposition; no option claims intra-day currency. | A `T-FRESH-CONFLICT`; B `Critical tension`; C OQ-01 treatment. |
| Seven-year audit versus diagnostic payload exclusion | BR-06 retention must coexist with ARC-07 diagnostic exclusion. | Correctly separated; no artifact collapses audit and diagnostic logs into one uncontrolled plane. | A `T-AUDIT-DIAG`; B row 32; C `C1-RET` + `C1-BND`. |
| Refusal evidence | DISC-03 needs route to benefits team and retained refusal interaction. | Covered in all options; route owner/evidence interpretation remains an open human disposition. | A `T-REFUSAL-EVIDENCE`; B `Open constraints`; C OQ-02. |
| US/tenant boundary | NFR-01/NFR-02 plus ARC-04/ARC-05 are mandatory boundaries. | Covered in all options as boundary/containment obligations, not topology. | A `CAP-BOUNDARY`; B `B*-E2/E3`; C `C*-BND`. |
| Availability/performance | BR-05/NFR-03/ELAB-01 are Should-level measurement obligations. | Retained in all options; C3/A3/B3 add depth. Guard needed to avoid accidental Must promotion. | A `CAP-PERF/CAP-AVAIL`; B `B*-E5/E6`; C `C*-PERF`. |
| Release gates | NFR-04/NFR-05/ARC-12/SOW acceptance and governance block production/go-live until satisfied. | Correctly treated as non-bypassable. Clarify evidence preparation versus approval. | A `T-GATE-SEQUENCE`; B `B*-E6/E8`; C `C*-REL`. |
| Model allowlist/change control | ARC-09 and ARC-10 are mandatory controls before model use/change. | Correctly retained; no model/version chosen. | A `CAP-GOV`; B `B*-E6/E8`; C `C*-REL`. |

## Matrix Correction Requests

These are advisory corrections for any future revision of [comparison-matrix.md](comparison-matrix.md); this review does not edit that file.

1. Add the PASS/BREACH criteria from `Named Commitment Detection` beside the architecture-neutrality score so DP-4 reviewers can see why every option scores 5.
2. Qualify C3's `first-release quality bar` wording so Should-level BR-05/NFR-03/ELAB-01 remain Should unless a human scope decision changes their priority.
3. Clarify that OQ-01/OQ-02/OQ-03 dispositions are required human/business decisions before Ring 1 planning baseline, not decisions already made by Model C or the matrix.
4. Keep ARC-08 as one Scenario Outline in all future count tables; do not split the six examples into separate scenario totals.
5. Continue to label the candidate hybrid as `NOT SELECTED - DP-4 PENDING` and non-binding until the human explicitly selects it or another option.

## Safe Synthesis Constraints

Any Phase 1 synthesis or DP-4 presentation should preserve these guardrails:

1. Treat ARC-01..ARC-14 and NFR-01..NFR-05 as source obligations, not optional proposals.
2. Do not select a product, service, topology, runtime, model, database, index, storage pattern, network pattern, or deployment architecture beyond exact source restatement.
3. Preserve pre-retrieval authorization as a hard dependency before retrieval, grounding, and citation.
4. Keep citation identifiers inside the authorized result scope to avoid authorization side channels.
5. Preserve location-level answer semantics and fail safe to uncertainty when location context is ambiguous.
6. State amendment freshness honestly; do not imply intra-day amendment availability.
7. Keep audit retention and diagnostic logging as separate control planes: seven-year query/response/refusal retention must not leak provider payloads into diagnostics.
8. Preserve BR-07 and DISC-06 as Could; preserve BR-05, NFR-03, and ELAB-01 as Should.
9. Distinguish evidence preparation from approval: security, RAI, ATO accepted/submitted as applicable, CAB approval, rollback plan, and Must IV&V remain gate conditions.
10. Keep OQ-01 freshness interpretation, OQ-02 benefits-team routing/evidence, and OQ-03 governance-system alignment as accountable human/business dispositions.

## WAF Snapshot

| Pillar | Score | Key finding |
| --- | ---: | --- |
| Security | 4/5 | Strong coverage of identity, managed identity, pre-retrieval authorization, tenant boundary, no-training, diagnostic minimization, and release gates; implementation design remains intentionally undecided. |
| Reliability | 3/5 | Availability and recovery are retained, with richer treatment in comprehensive options; concrete failure modes are intentionally left to later rings. |
| Performance Efficiency | 3/5 | BR-05/ELAB-01 are preserved as measurable Shoulds; no performance architecture is prematurely selected. |
| Operational Excellence | 4/5 | Governance, IV&V, RAI/security/ATO/CAB, audit, and lifecycle evidence are consistently represented; matrix wording should preserve evidence-vs-approval boundaries. |
| Cost Optimization | 4/5 | Least-cost options reduce duplicate evidence without dropping Musts; no resource SKU/service topology cost commitment appears. |
| Overall WAF | 3.6/5 | Appropriate for Ring 0 Phase 1: constraints and risks are visible while architecture remains open. |

## ADR Compliance

- **ADRs reviewed:** None required or selected for this Ring 0 Phase 1 review; the workspace [docs/Architecture/ADRs](../../Architecture/ADRs) folder is present but this review was scoped to brainstorm artifacts and feature constraints.
- **Conformance:** PASS for Phase 1. The artifacts do not make architecture decisions that would require an ADR now.
- **Missing ADRs:** None for Phase 1. Later Ring 1 architecture choices will require ADRs before implementation.

## Architectural Strengths

- All nine options preserve source priority semantics and maintain 39/39 scenario coverage.
- The artifacts consistently separate authoritative platform standards from proposed design choices.
- The major safety tensions are visible: pre-retrieval authorization, citation leakage, location ambiguity, nightly freshness, audit versus diagnostics, refusal evidence, release gates, and model governance.
- The candidate hybrid is framed as a non-binding DP-4 review candidate and explicitly avoids product/topology commitments.

## Advisory Recommendations

1. Present DP-4 with this review's PASS/BREACH table and safe synthesis constraints attached.
2. Require human disposition of OQ-01, OQ-02, and OQ-03 before Ring 1 planning is baselined.
3. If the hybrid is selected, document that it selects a decomposition strategy only, not an architecture, ADR, WBS, model, runtime, index, database, or deployment topology.
4. In Ring 1, convert only the human-selected decomposition into architecture alternatives and ADR candidates; do not treat any producer option's internal package names as components.

## Review Outcome

**DP-4 readiness:** READY  
**Reason:** No CRITICAL or MAJOR architecture-neutrality, authoritative-constraint, NFR/control completeness, contradiction/risk, or premature-commitment finding was identified. Minor wording guards should be carried into the DP-4 presentation and any subsequent Ring 1 planning.