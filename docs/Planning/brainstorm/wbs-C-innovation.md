# WBS-C — Innovation, Parallelism & Creative Problem-Solving

**Variant:** C — Innovation  
**Staffing model:** Human-staffed (cross-functional evidence pods; overlapping domains; no named persons)  
**Based on decomposition:** DEC-008 Candidate Hybrid (B2 acceptance spine; C2 OQ-01/OQ-02/OQ-03 as critical-path human inputs; A2 authorization-before-grounding; A3/B3/C3 tension evidence; A1/B1/C1 evidence reuse without collapsing source assertions)  
**Phase:** Ring 0 brainstorm Phase 2 competing-WBS construction only  
**Date:** 2026-08-28  
**Workspace:** Tier 3 Enterprise Program Office; **Autonomy:** Human-in-the-Loop; **Governance Intensity:** Full  
**Status:** Competing alternative — **not selected**

## Scope Guard

- This file is one of five mandatory Phase 2 WBS alternatives. It does **not** select a WBS, start Ring 1, authorize delivery, or close a ring gate.
- Shared scope is **exactly** WP-1 through WP-8 as frozen by the Candidate Hybrid. **No work package is added or removed.**
- Experiments and parallel pods may deepen **acceptance evidence**. They **must not** add requirements, invent scenarios, or promote Should/Could.
- **No** cost, duration, week, date-target, staffing-headcount, or token estimate is stated or implied.
- **No** architecture, product, topology, component, model, runtime, database, or index choice is made.
- Named ARC/SOW platform standards appear only as `AUTHORITATIVE CONSTRAINT — not a proposed commitment`.
- This artifact does not update checklists, ring status, journals, or other files.

## Shared Scope (Frozen — No Additions or Removals)

| # | Work Package | Outcome obligation (architecture-neutral) |
| --- | --- | --- |
| WP-1 | Authority and Acceptance Spine | Freeze the 39-scenario contract, priorities, DISC-versus-SOW labeling, and testable acceptance assertions so parallel pods cannot drift. |
| WP-2 | Identity, Authorization, and Containment | Prove identity, pre-retrieval business-unit authorization, residency, tenant containment, and no-training obligations before any retrieval/grounding integration. |
| WP-3 | Source Access, Freshness, Location, and Read-Only Integrity | Prove defined source-access modes, truthful amendment freshness, location-level integrity, and read-only behavior. |
| WP-4 | Grounded Cited Answers and Uncertainty | Prove grounded, claim-level cited answers and honest uncertainty after authorization and source/freshness acceptance. |
| WP-5 | Prohibition, Refusal, Routing, and Refusal Evidence | Prove prohibited-subject refusal, coverage-determination refusal, benefits-team routing, and refusal-specific audit evidence. |
| WP-6 | Audit, Diagnostic Separation, and Optional Feedback | Prove 7-year query/response retention on the audit plane, diagnostic exclusion of provider payloads, and optional Could feedback without promotion. |
| WP-7 | Performance and Availability Evidence | Measure Should response-time and availability evidence without promoting those targets to Must. |
| WP-8 | Governance, Release Evidence, and Convergence | Converge authoritative delivery/release/governance evidence, including the stronger ARC-12 production gate, without authorizing release. |

## Staffing Roster

Named **human roles only**. No person names are fabricated. Occupants remain unnamed. Modes may overlap by design (WBS-C cross-pollination).

| Role | Assigned To | Mode | Work Packages | Pod |
| --- | --- | --- | --- | --- |
| Program Executive | Human role (unnamed) | Govern / Challenge | WP-1, WP-8 | Spine; Governance Convergence |
| Program Manager | Human role (unnamed) | Lead | WP-1, WP-8 | Spine; Governance Convergence |
| Business Owner | Human role (unnamed) | Lead (OQ-01, OQ-02) / Execute | WP-1, WP-3, WP-5 | Freshness Challenge; Refusal Routing |
| Product Management | Human role (unnamed) | Execute / Challenge | WP-1, WP-4, WP-5, WP-6 | Answer Integrity; Refusal Routing |
| Project Lead | Human role (unnamed) | Lead (pod coordination) | WP-1, WP-2, WP-3, WP-4, WP-5 | All delivery pods (coordination only) |
| Solution Architect | Human role (unnamed) | Challenge (neutrality) / Execute | WP-2, WP-3, WP-4 | Authorization; Source Honesty; Answer Integrity |
| Senior Cloud Architect | Human role (unnamed) | Challenge (enterprise alignment, no selection) | WP-2, WP-8 | Containment; Governance Convergence |
| Architect Reviewer | Human role (unnamed) | Challenge / QA | WP-1, WP-4, WP-8 | Assumption Challenge Council |
| Plan Reviewer | Human role (unnamed) | Challenge / QA | WP-1, WP-8 | Assumption Challenge Council |
| Security Reviewer | Human role (unnamed) | Lead / QA | WP-2, WP-5, WP-6, WP-8 | Authorization; Refusal; Audit/Diagnostics |
| Security Enabler | Human role (unnamed) | Challenge | WP-2, WP-8 | Containment; Governance Convergence |
| Responsible AI Specialist | Human role (unnamed) | Execute / QA | WP-4, WP-5, WP-8 | Answer Integrity; Release Evidence |
| Test Manager | Human role (unnamed) | Lead (evidence design) | WP-1, WP-7 | Spine; Performance Evidence |
| Test Engineer | Human role (unnamed) | Execute | WP-2, WP-3, WP-4, WP-5 | Authorization; Source Honesty; Answer Integrity; Refusal |
| Test Reviewer | Human role (unnamed) | QA / Challenge | WP-1, WP-6, WP-7 | Assumption Challenge Council |
| QEI Engineer | Human role (unnamed) | Execute / Challenge | WP-3, WP-7 | Freshness Challenge; Performance Evidence |
| SFI Engineer | Human role (unnamed) | Execute / Challenge | WP-2, WP-6 | Containment; Audit/Diagnostics |
| Ops Chief | Human role (unnamed) | Execute / QA | WP-6, WP-7, WP-8 | Audit/Diagnostics; Performance; Governance |
| Scrum Master | Human role (unnamed) | Coordinate overlap/rework | WP-1 through WP-8 | Pod facilitation (no scope change) |

**Assumption Challenge Council (standing, human):** Architect Reviewer, Plan Reviewer, Test Reviewer, Security Reviewer, Business Owner. The council attacks hidden assumptions on freshness, routing, authorization timing, citation leakage, and audit-versus-diagnostic planes. It cannot add scope or select mechanisms.

## Work Package Schedule

Sequence uses **predecessor gates and stages only**. No start/end dates, weeks, or durations.

| # | Work Package | Owner | Dependencies / predecessor gates | Sequence stage | Risk |
| --- | --- | --- | --- | --- | --- |
| WP-1 | Authority and Acceptance Spine | Program Manager (Business Owner + Test Manager co-execute) | None | Stage 0 — Spine freeze | L |
| WP-2 | Identity, Authorization, and Containment | Security Reviewer (Solution Architect + Test Engineer) | WP-1 frozen | Stage 1 — parallel after spine | M |
| WP-3 | Source Access, Freshness, Location, and Read-Only Integrity | Business Owner (QEI Engineer + Test Engineer) | WP-1 frozen; **OQ-01 human disposition before freshness acceptance** | Stage 1 — parallel after spine; freshness acceptance gated by OQ-01 | H |
| WP-4 | Grounded Cited Answers and Uncertainty | Product Management (Solution Architect + Test Engineer + Responsible AI Specialist) | WP-1; **WP-2 pre-retrieval authorization complete**; WP-3 source/freshness/location/read-only acceptance (includes OQ-01) | Stage 2 — integration after WP-2 and WP-3 | H |
| WP-5 | Prohibition, Refusal, Routing, and Refusal Evidence | Business Owner (Security Reviewer + Product Management) | WP-1; WP-6 audit plane available for refusal retention; **OQ-02 human disposition before routing/refusal completion** | Stage 1 start after spine; **completion gated by OQ-02** | M |
| WP-6 | Audit, Diagnostic Separation, and Optional Feedback | Security Reviewer (SFI Engineer + Ops Chief + Test Reviewer) | WP-1; optional-feedback depth remains Could | Stage 1 — parallel after spine | M |
| WP-7 | Performance and Availability Evidence | Test Manager (QEI Engineer + Ops Chief) | WP-1 for metric contract; representative in-scope questions from WP-4 for measurement (not a Must blocker) | Stage 1 evidence design; Stage 2–3 measurement beside Must integration | L |
| WP-8 | Governance, Release Evidence, and Convergence | Program Executive (Program Manager + Responsible AI Specialist + Security Reviewer + Ops Chief) | WP-1; **OQ-03 human disposition before governance baseline**; Must evidence from WP-2–WP-6 before convergence; ARC-12 remains the stronger production gate | Stage 1 constraint restatement; Stage 3 convergence after Must streams | M |

**Hard dependencies preserved**

1. WP-1 acceptance spine precedes every other package.
2. OQ-01 (human/business) precedes WP-3 freshness **acceptance** and WP-4 **integration**.
3. OQ-02 (human/business) precedes WP-5 routing/refusal **completion**.
4. OQ-03 (human/governance) precedes WP-8 governance **baseline**.
5. WP-2 pre-retrieval authorization precedes WP-4 retrieval/grounding/citation **integration**.

Controlled overlap is allowed **around** these gates (for example, WP-4 evidence design, WP-5 refusal wording, WP-8 constraint inventory). Integration, freshness acceptance, routing completion, and governance baseline cannot jump their gates.

## Parallel Streams / Pods

| Stream / pod | Work Packages | Lead | Can start immediately? |
| --- | --- | --- | --- |
| Spine Pod | WP-1 | Program Manager | Yes |
| Authorization & Containment Pod | WP-2 | Security Reviewer | After WP-1 |
| Source Honesty & Read-Only Pod | WP-3 | Business Owner | After WP-1; freshness **acceptance** waits for OQ-01 |
| Answer Integrity Pod | WP-4 | Product Management | Design after WP-1; **integration** after WP-2 and WP-3 (OQ-01) |
| Refusal & Routing Pod | WP-5 | Business Owner | After WP-1; **completion** after OQ-02; refusal-audit uses WP-6 |
| Audit / Diagnostics Pod | WP-6 | Security Reviewer | After WP-1 |
| Performance Evidence Pod | WP-7 | Test Manager | Design after WP-1; measurement after representative WP-4 questions exist |
| Governance Convergence Pod | WP-8 | Program Executive | Constraint inventory after WP-1; **baseline** after OQ-03; closure after Must streams |
| Assumption Challenge Council | Cross-cuts WP-1–WP-8 | Architect Reviewer | After WP-1; continuous structured challenges |

**Hidden parallelism used by WBS-C:** containment (WP-2 non-authorization slice), source-mode inventory (WP-3 non-freshness slice), refusal negative-path catalog (WP-5 pre-routing), audit-versus-diagnostic plane distinction (WP-6), Should metric **design** (WP-7), and ARC constraint inventory (WP-8) may run concurrently after the spine. Freshness **acceptance**, grounding **integration**, routing **completion**, and governance **baseline** remain gated.

## Bounded Experiments

Spikes explore **whether acceptance evidence is sufficient and honest**. They do not select mechanisms, products, topology, models, runtimes, databases, or indexes. They cannot add requirements or promote Should/Could. Rework from a failed assumption is accepted and contained by WP-1.

| ID | Question challenged | Pod | Allowed exploration | Exit criteria (pass) | Fail / rework control |
| --- | --- | --- | --- | --- | --- |
| EXP-AUTHZ | Does “results restricted to business unit” allow retrieve-then-filter? | Authorization & Containment | Compare BR-03 surface wording against ARC-03/DISC-02 pre-retrieval obligation using scenario assertions only | Pre-retrieval authorization remains the control; post-retrieval filtering is rejected as the control; WP-2 evidence records both assertions | If a pod drafts retrieve-then-filter as acceptable, Challenge Council stops WP-4 integration until WP-2 is re-evidenced |
| EXP-CITE | Can citation identifiers leak unauthorized records? | Answer Integrity (design only until WP-2 gate) | Walk BR-02 identifiers against BR-03/ARC-03 authorized set | Every cited source system and record identifier is inside already-authorized scope | Citation evidence that precedes WP-2 authorization is discarded, not reused as integration proof |
| EXP-FRESH | Can “amendment loaded yesterday” be treated as intra-day currency? | Source Honesty | Structured business challenge of DISC-05 versus ARC-11 nightly-export mode and ARC-13 non-claim (OQ-01) | Written OQ-01 disposition; WP-3 freshness acceptance records available information plus freshness context; no intra-day claim | Without OQ-01, WP-3 may inventory source modes and read-only behavior only; WP-4 integration does not start |
| EXP-LOC | When location context is ambiguous, may group status be inferred? | Source Honesty + Answer Integrity | Pair DISC-01/ARC-14 with DISC-04/BR-08 fail-safe wording | Location is identified; group status is not inferred across locations; missing location/amendment evidence states uncertainty without invention | Ambiguous location answers are not accepted as WP-4 integration evidence |
| EXP-AUDIT | Can one log plane satisfy 7-year retention and diagnostic exclusion? | Audit / Diagnostics | Separate BR-06/DISC-03 audit retention from ARC-07 diagnostic exclusion | Two planes evidenced; provider payloads excluded from diagnostics; query/response (and refusal interaction) retained for audit | Merged-plane evidence is rejected; WP-5 refusal-audit cannot close on diagnostic logs |
| EXP-ROUTE | Does generic BR-06 retention satisfy DISC-03 routing and refusal evidence? | Refusal & Routing | Challenge destination ownership and refusal-specific retention (OQ-02) | Written OQ-02 disposition naming accountable benefits-team destination as a **business** routing outcome; refusal interaction retained | WP-5 may prove BR-04/SOW prohibited-subject refusal early; routing/refusal **completion** waits for OQ-02 |
| EXP-RO | Are the two read-only scenarios independently assertable? | Source Honesty | Exercise SOW-SCOPE-READONLY and DISC-SCOPE-READONLY without collapsing them | Each read-only scenario has its own passing assertion; no write to a system of record | Collapsed “one read-only test covers both” evidence is rejected by WP-1 spine |
| EXP-PRI | Can experiments promote Should/Could if evidence looks strong? | Assumption Challenge Council | Deliberately attempt to treat BR-05/NFR-03/ELAB-01 or BR-07/DISC-06 as Must | Attempt **fails**; priorities unchanged; WP-7 remains Should; WP-6 feedback remains Could | Any draft that promotes priority is a WP-1 defect, not a scope change |

## Milestone Sequence

Criteria only. **No target dates.**

| Milestone | Criteria |
| --- | --- |
| M0 Spine frozen | WP-1 holds the 39-scenario ledger, Must/Should/Could/Constraint priorities, DISC discovery labels, and per-scenario acceptance assertions. Parallel pods cannot change wording without returning to WP-1. |
| M1 OQ-01 disposed | Human/business disposition of amendment-yesterday versus nightly-export availability is written. Intra-day freshness claims remain prohibited. WP-3 freshness acceptance and WP-4 integration are unblocked on this input only. |
| M2 WP-2 authorization gate | Identity, managed-identity constraint restatement, pre-retrieval business-unit authorization, residency, tenant, and no-training obligations have distinct evidence. WP-4 retrieval/grounding/citation integration is allowed to start. |
| M3 WP-3 source/freshness/read-only accepted | Defined source modes, location-level integrity, truthful freshness context, and both read-only scenarios are accepted. |
| M4 WP-4 integration complete | Grounded answers, claim-level citations from authorized records, and uncertainty-without-invention are evidenced against the spine. |
| M5 OQ-02 disposed and WP-5 complete | Human/business routing destination is written. Coverage-determination and prohibited-subject refusals, benefits-team routing, and refusal-specific audit evidence are complete. |
| M6 Audit/diagnostic separation evidenced | BR-06 retention and ARC-07 diagnostic exclusion are separately true. BR-07/DISC-06 remain Could. |
| M7 Should evidence recorded | BR-05, NFR-03, and ELAB-01 are measured/reported as Should. They are not Must release blockers. |
| M8 OQ-03 disposed and WP-8 baseline | Human/governance disposition reconciles current tracking with authoritative Azure DevOps work-tracking/source-control constraints without replacing those constraints. WP-8 governance baseline may proceed. |
| M9 Must convergence | All Must BR/NFR/ARC/DISC assertions plus unnumbered Constraint scenarios are independently assertable. ARC-12 remains the stronger production gate versus SOW ATO-submit-only wording. **No production authorization is granted by this WBS.** |

## OQ Critical-Path Table

| ID | Question (from Candidate Hybrid / DEC-008) | Human owner role | Blocks | Does not block |
| --- | --- | --- | --- | --- |
| OQ-01 | Confirm interpretation of an amendment loaded yesterday against nightly-export availability while preserving ARC-13’s prohibition on intra-day freshness claims | Business Owner | WP-3 **freshness acceptance**; WP-4 **integration** | WP-1; WP-2; WP-3 source-mode inventory and read-only assertions; WP-5 refusal design; WP-6 plane separation; WP-7 metric design; WP-8 constraint inventory |
| OQ-02 | Confirm the accountable benefits-team destination and the required interpretation of refusal-specific audit evidence for DISC-03 | Business Owner | WP-5 **routing/refusal completion** | WP-5 BR-04/prohibited-subject refusal design; WP-6 generic retention design; WP-2; WP-4 (after its own gates) |
| OQ-03 | Reconcile current GitHub tracking with authoritative Azure DevOps work-tracking/source-control constraints without replacing the latter | Program Executive (with Program Manager) | WP-8 **governance baseline** | WP-1–WP-7 evidence work; WP-8 constraint restatement short of baseline |

All three remain **human/business or human/governance** inputs. Pods may prepare challenge briefs; they may not invent dispositions.

## Risks / Rework Controls

| Risk | Likelihood | Impact | Control in this WBS |
| --- | --- | --- | --- |
| Parallel pods drift from the frozen scenario contract | M | H | WP-1 spine is the only wording authority; Challenge Council compares pod evidence to exact scenario titles |
| Overlap/rework from experiments wastes evidence | H | M | Accepted cost of WBS-C; EXP-* exit criteria state what may be reused versus discarded |
| WP-4 starts retrieval/grounding before WP-2 authorization | M | H | Hard gate: no WP-4 integration without WP-2 pre-retrieval authorization evidence |
| Freshness acceptance proceeds without OQ-01 | M | H | WP-3 may not accept freshness; WP-4 may not integrate |
| WP-5 marked complete without OQ-02 routing destination | M | H | Completion criteria include written OQ-02; BR-04 alone is insufficient |
| WP-8 baseline proceeds without OQ-03 | M | M | Governance baseline gated; Azure DevOps constraints remain restated, not replaced |
| Experiment selects a mechanism (store, index, runtime, model, topology) | M | H | Experiment charter forbids mechanism selection; Architect Reviewer rejects any such draft |
| Strong Should/Could evidence is treated as Must | M | H | EXP-PRI must fail; priorities cannot be promoted |
| Audit and diagnostic planes are collapsed | M | H | EXP-AUDIT exit requires two planes; WP-5 cannot close refusal-audit on diagnostics |
| Duplicate read-only or overlapping location/freshness scenarios are silently merged | M | M | Spine requires each source scenario once as a primary assertion; overlapping read-only rows stay distinct |
| Full governance intensity is treated as optional because WBS-C is “innovative” | L | H | Tier 3 Full governance and Human-in-the-Loop still apply; innovation is sequencing/staffing, not gate bypass |

## Trade-offs

- **Strengths of this WBS:** Maximizes concurrent human evidence pods; uses structured assumption challenges to surface freshness, routing, citation-leak, and audit-plane tensions early; bounded experiments deepen acceptance evidence without adding scope; hard gates protect authorization-before-grounding and OQ critical-path inputs.
- **Weaknesses of this WBS:** Controlled overlap and discarded spike evidence increase rework; cross-functional multi-hatting raises coordination load; Challenge Council can stall a pod that confuses exploration with selection.
- **Best suited for:** A regulated setting where location misinterpretation and untruthful amendment freshness are dominant risks, and the organization can staff overlapping human pods to attack assumptions before integration — not for a single-threaded or already-selected delivery plan.
- **Not claimed:** Faster elapsed time, lower cost, or a selected implementation.

## Architecture-Neutrality Statement

**Result: PASS (intent of this artifact).**

WBS-C sequences **human evidence work** only. Work packages, pods, milestones, and experiments describe observable acceptance outcomes and predecessor gates. They do not name a solution architecture, deployment topology, data store, index, retrieval mechanism, model, or runtime.

Where source text names Microsoft Entra ID, managed identity, United States Azure regions, the UHG tenant boundary, Microsoft Foundry hosted agents, Azure Key Vault with managed identity, Azure Monitor and Application Insights, Bicep through Azure DevOps pipelines, Azure DevOps Boards, Azure DevOps Repos, the UHG AI allowlist, or change advisory board approval, those names are restated solely as `AUTHORITATIVE CONSTRAINT — not a proposed commitment`. Restatement is not selection.

## Source Priority Statement

- Every Must BR, NFR, ARC, and DISC-01..05 obligation remains Must.
- BR-05, NFR-03, and ELAB-01 remain **Should**. WP-7 may measure and report; experiments must not promote them.
- BR-07 and DISC-06 remain **Could**. WP-6 may evidence optional feedback; experiments must not promote them to first-release Must.
- Unnumbered SOW/DISC scope, acceptance, and governance scenarios remain **Constraint** and are not dropped.
- DISC items stay newly discovered refinements, not silent SOW amendments.
- SOW acceptance requires ATO **submission**; ARC-12 requires the ATO package **submitted and accepted** (plus security review, responsible AI sign-off, change advisory board approval, and a documented rollback plan) before production deployment. **ARC-12 is the stronger production gate** and must not be collapsed into the lighter SOW wording.
- Evidence reuse is allowed only when each source scenario keeps a distinct assertion.

## 39-Row Scenario Traceability Ledger

Counting rule: ARC-08 is **one** Scenario Outline. Each source scenario appears **exactly once** as a primary row. Overlapping read-only scenarios are not collapsed.

| Source ID | Exact scenario title | Priority | WP | Treatment |
| --- | --- | --- | --- | --- |
| BR-01 | Return a grounded answer to an in-scope provider-network question | Must | WP-4 | Must; primary after WP-2 authorization and WP-3 source/freshness acceptance; experiments may deepen evidence only |
| BR-02 | Cite every factual claim | Must | WP-4 | Must; citations drawn only from already-authorized records (EXP-CITE); no side-channel |
| BR-03 | Restrict results to the analyst business unit | Must | WP-2 | Must; enforced by pre-retrieval authorization, not retrieve-then-filter (EXP-AUTHZ) |
| BR-04 | Refuse a coverage-determination question | Must | WP-5 | Must; refusal behavior may start after WP-1; routing completion still waits on OQ-02 |
| BR-05 | Meet the response-time objective | Should | WP-7 | Should; measure/report median under 6 seconds; not promoted to Must |
| BR-06 | Retain query and response records | Must | WP-6 | Must; 7-year audit plane, distinct from diagnostics (EXP-AUDIT) |
| BR-07 | Rate answer quality inline | Could | WP-6 | Could; optional; not first-release Must; EXP-PRI must fail if promoted |
| BR-08 | State uncertainty when no answer is found | Must | WP-4 | Must; no guessing; pairs with location-specific uncertainty without merging rows |
| NFR-01 | Keep processing in United States regions | Must | WP-2 | Must; `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| NFR-02 | Keep provider and member data within the UHG tenant | Must | WP-2 | Must; `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| NFR-03 | Meet business-hours availability target | Should | WP-7 | Should; measure/report 99.5 percent; not promoted to Must |
| NFR-04 | Require responsible AI assessment before production | Must | WP-8 | Must; release-gate evidence; not a production authorization |
| NFR-05 | Require security review and ATO before go-live | Must | WP-8 | Must; does not weaken ARC-12 accept-before-deploy |
| ARC-01 | Accept Microsoft Entra ID only | Constraint | WP-2 | Authoritative constraint restatement only; not a proposed commitment. |
| ARC-02 | Disallow static application credentials | Constraint | WP-2 | Authoritative managed-identity and credential constraint; not a proposed commitment. |
| ARC-03 | Evaluate authorization before retrieval | Constraint | WP-2 | Authoritative constraint and hard predecessor to WP-4 integration. |
| ARC-04 | Keep processing and storage in United States Azure regions | Constraint | WP-2 | Authoritative residency constraint; not a proposed topology. |
| ARC-05 | Prevent customer data from leaving the tenant | Constraint | WP-2 | Authoritative tenant-boundary constraint. |
| ARC-06 | Prohibit training and fine tuning on customer data | Constraint | WP-2 | Authoritative prohibition on customer-data training and fine-tuning. |
| ARC-07 | Exclude provider payloads from diagnostic logging | Constraint | WP-6 | Authoritative diagnostic constraint; not a substitute for audit retention. |
| ARC-08 | Use the approved platform service for each capability | Constraint | WP-8 | One Scenario Outline; six example pairs are source constraints, not six extra scenarios or new selections. |
| ARC-09 | Restrict model use to the approved allowlist | Constraint | WP-8 | Authoritative allowlist constraint; no model selected here. |
| ARC-10 | Govern a model version change | Constraint | WP-8 | Authoritative CAB and evaluation-baseline constraints; no version selected. |
| ARC-11 | Access all approved data sources using their defined modes | Constraint | WP-3 | Authoritative access modes are restated, not redesigned. |
| ARC-12 | Enforce all production release gates | Constraint | WP-8 | Authoritative stronger production gate: ATO submitted and accepted plus security, RAI, CAB, and rollback evidence. |
| ARC-13 | Do not claim intra-day amendment freshness | Constraint | WP-3 | Authoritative freshness constraint; OQ-01 cannot authorize an intra-day claim. |
| ARC-14 | Guard against location-level misinterpretation | Constraint | WP-3 | Authoritative location constraint; EXP-LOC fails safe to uncertainty. |
| DISC-01 | Answer contract status at the identified location | Must | WP-3 | Discovery Must; location identified; no group-status inference across locations |
| DISC-02 | Authorize before retrieving business-unit data | Must | WP-2 | Discovery Must; query-time authorization; unauthorized records not retrieved for later filtering |
| DISC-03 | Refuse, route, and log a coverage-determination request | Must | WP-5 | Discovery Must; completion requires OQ-02 destination plus refusal-specific audit (not generic BR-06 alone) |
| DISC-04 | State record-specific uncertainty without inventing an answer | Must | WP-4 | Discovery Must; missing amendment/location record stated; no invented status or tier |
| DISC-05 | Surface the known amendment freshness limitation | Must | WP-3 | Discovery Must; available amendment information plus freshness context; gated by OQ-01 for acceptance |
| DISC-06 | Capture detailed optional negative feedback | Could | WP-6 | Could; optional negative rating with comment; not promoted |
| ELAB-01 | Measure operational response-time expectation | Should | WP-7 | Should elaboration of BR-05; report against ~5s and under-10s reference points; does not replace BR-05 |
| SOW-SCOPE-READONLY | Do not write to a system of record | Constraint | WP-3 | Constraint; primary read-only assertion; not merged with DISC-SCOPE-READONLY |
| SOW-SCOPE-PROHIBITED | Exclude prohibited subject matter | Constraint | WP-5 | Constraint; member/patient clinical data, claims adjudication, and coverage determination excluded |
| SOW-ACCEPTANCE | Enforce contractual release acceptance conditions | Constraint | WP-8 | Constraint; Must IV&V, signed RAI, ATO **submitted**; does not override ARC-12 accept-before-deploy |
| SOW-GOVERNANCE | Use required delivery governance constraints | Constraint | WP-8 | Constraint; Azure DevOps work tracking, CAB for production, allowlist; OQ-03 reconciles current tracking without replacement; `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| DISC-SCOPE-READONLY | Keep the first release read only | Constraint | WP-3 | Constraint; distinct from SOW-SCOPE-READONLY; EXP-RO requires a separate assertion |

**Attestation:** 39/39 primary rows (BR-01..08 = 8; NFR-01..05 = 5; ARC-01..14 = 14 with ARC-08 as one outline; DISC-01..06 = 6; ELAB-01 = 1; unnumbered SOW-SCOPE-READONLY, SOW-SCOPE-PROHIBITED, SOW-ACCEPTANCE, SOW-GOVERNANCE, DISC-SCOPE-READONLY = 5). No duplicate primary IDs. No missing source scenarios.

## Explicit Non-Commitments

- WBS-C is **not** selected.
- Ring 1 has **not** started.
- No checklist, status, journal, or cost baseline is updated by this file.
- No architecture, product, topology, model, runtime, database, or index is chosen.
