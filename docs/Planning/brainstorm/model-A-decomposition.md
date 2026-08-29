# Brainstorm Decomposition — Model A

**Objective:** Deliver the UHG Provider Network Intelligence Agent — authenticated, grounded, cited, read-only answers to provider-network questions — covering all 39 scenarios within authoritative ARC constraints.
**Model:** Model A (constraint-sensitive, deliberative systems reasoning)
**Date:** 2026-08-28
**Scope of this artifact:** Three architecture-neutral strategic decompositions (A1 Least Cost, A2 Shortest Time, A3 Most Comprehensive). These are **strategic decompositions, not WBSs** — no staffing, dates, component choices, deployment topology, runtime/model/index selection, or architecture commitment appears below. Where an existing named UHG standard is referenced it is restated only as a boundary and marked `AUTHORITATIVE CONSTRAINT — not a proposed commitment`.

---

## 0. Reading Notes and Constraint Register

All decompositions below operate inside a fixed control envelope inherited from the corpus. These are **restated boundaries**, not selections made by Model A:

| Constraint (restated boundary) | Source tags | Marker |
| --- | --- | --- |
| Microsoft Entra ID is the only accepted identity provider | ARC-01, C-03 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Managed identity for application access; no stored secrets / static bearer tokens | ARC-02, C-03 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Business-unit authorization evaluated **before** retrieval; post-retrieval filtering is not the control | ARC-03, DISC-02, BR-03 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Processing and storage remain in United States Azure regions | ARC-04, NFR-01 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Provider/member data remains within the UHG tenant boundary | ARC-05, NFR-02 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| No training or fine-tuning on customer data | ARC-06 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Provider-data payloads excluded from diagnostic logging | ARC-07 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Approved platform standards per capability (agent hosting = Microsoft Foundry hosted agents; secrets = Azure Key Vault w/ managed identity; observability = Azure Monitor + Application Insights; IaC = Bicep via Azure DevOps pipelines; work tracking = Azure DevOps Boards; source control = Azure DevOps Repos) | ARC-08 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Model use limited to the UHG AI allowlist | ARC-09, C-06 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Model-version change requires CAB approval and a documented evaluation baseline | ARC-10, C-06 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Data-source access modes: contracting (read-only API), credentialing (read-only API), amendment (nightly export), provider-directory (read-only API) | ARC-11, C-07 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Production release gates: security sign-off, RAI sign-off, ATO submitted/accepted, CAB approval, rollback plan | ARC-12, NFR-04, NFR-05, C-08 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| No claim of intra-day amendment freshness | ARC-13, DISC-05 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Location-level contract context preserved to avoid misinterpretation | ARC-14, DISC-01 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Read-only; no writes to any system of record | C-01, SOW "Do not write", transcript "Keep first release read only" | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |
| Exclude member/patient clinical data, claims adjudication, coverage determination | C-02, BR-04 | `AUTHORITATIVE CONSTRAINT — not a proposed commitment` |

**Priority discipline (applies to all three strategies):** No Must BR/NFR/ARC/DISC may be omitted. **BR-07 and DISC-06 remain Could** in every strategy and are never promoted to first-release Must. Requirements may be **staged** across rings but never **discarded**.

### 0.1 Capability Increments (architecture-neutral vocabulary)

To keep the three strategies comparable and architecture-neutral, each is expressed as a staging of the same outcome-oriented capability increments. An increment names a *result*, not a component.

| Increment | Outcome (architecture-neutral) | Primary tags |
| --- | --- | --- |
| CAP-IDENT | Only Entra-authenticated principals with managed-identity service access reach the agent | ARC-01, ARC-02 |
| CAP-AUTHZ | Business-unit scope is decided **before** any record is retrieved | ARC-03, DISC-02, BR-03 |
| CAP-GROUND | Every returned answer is supported by ≥1 cited approved-source record with system + record id | BR-01, BR-02 |
| CAP-LOCATION | Answers are location-level, name the location, and never infer group status across locations | DISC-01, ARC-14 |
| CAP-REFUSE | Prohibited/coverage requests are refused, routed, and out-of-scope subjects are excluded | BR-04, DISC-03, "Exclude prohibited subject matter" |
| CAP-UNCERTAIN | Absence of support yields an honest "cannot find" — location/amendment-specific, no invention | BR-08, DISC-04 |
| CAP-FRESH | Amendment answers carry explicit freshness context and never claim intra-day currency | DISC-05, ARC-13 |
| CAP-DATA | Four approved sources are accessed only in their defined read-only / nightly-export modes | ARC-11 |
| CAP-AUDIT | Queries, responses, and refusal events are retained for 7-year audit | BR-06, DISC-03 |
| CAP-BOUNDARY | US residency, tenant containment, no-train, diagnostics payload exclusion are enforced | NFR-01, NFR-02, ARC-04, ARC-05, ARC-06, ARC-07 |
| CAP-READONLY | No write reaches any system of record | "Do not write", "Keep first release read only" |
| CAP-PERF | Response time is measured against the median-under-6s target and 5s/10s reference points | BR-05, ELAB-01 |
| CAP-AVAIL | Business-hours availability is measured against 99.5% | NFR-03 |
| CAP-GOV | Delivery governance: ADO tracking/repos, allowlist enforcement, model-change baseline + CAB | ARC-08, ARC-09, ARC-10, "Use required delivery governance constraints" |
| CAP-RELEASE | Release/acceptance gates satisfied: security, RAI, ATO, CAB, rollback, Must-IV&V pass | NFR-04, NFR-05, ARC-12, "Enforce contractual release acceptance conditions" |
| CAP-FEEDBACK | Optional inline rating and optional negative comment (**Could** — never first-release Must) | BR-07, DISC-06 |

### 0.2 Cross-Cutting Tensions Model A Tracks (deliberative stance)

These subtle conflicts are surfaced once here and referenced by ID in every strategy's risk treatment.

- **T-AUTHZ-TIMING** — BR-03 states *results are restricted* to the authorized BU, while ARC-03/DISC-02 mandate the decision happens *before retrieval*. A grounding pipeline that retrieves broadly then filters would satisfy BR-03's surface wording but **breach** ARC-03. CAP-GROUND and CAP-AUTHZ must be sequenced so retrieval is already scoped.
- **T-CITE-LEAK** — BR-02 requires every claim to expose source system + record id. Those identifiers must themselves be inside the authorized BU (BR-03), or citation becomes an authorization side-channel. CAP-GROUND depends on CAP-AUTHZ, not the reverse.
- **T-LOCATION-GROUND** — DISC-01/ARC-14 require location-level answers and DISC-04 requires location-specific "not found" wording, yet source-field sufficiency for location granularity is an **open question** (OQ-01 adjacent). Grounding must fail safe to CAP-UNCERTAIN when location context is ambiguous.
- **T-FRESH-CONFLICT** — DISC-05 records a business expectation that *yesterday's amendment is reflected*, but ARC-11 defines a **nightly export** and ARC-13 forbids claiming intra-day currency (OQ-01, High). No strategy can technically satisfy intra-day freshness; all must deliver honest freshness context and stage a business-agreement decision. This requirement is **staged, not dropped**.
- **T-AUDIT-DIAG** — BR-06 retains queries/responses (which contain provider data) for 7 years, while ARC-07 excludes provider payloads from **diagnostic** logging. These are two distinct log planes (audit vs. diagnostic); conflating them either destroys audit evidence or leaks provider data into diagnostics. CAP-AUDIT and CAP-BOUNDARY must treat them separately.
- **T-REFUSAL-EVIDENCE** — DISC-03 asks for refusal-specific retained evidence and benefits-team routing; BR-06 retains all interactions but does not *name* refusal evidence or the route owner (OQ-02, Medium). Whether generic retention satisfies DISC-03 is a staged clarification, not a scope cut.
- **T-GATE-SEQUENCE** — NFR-04/NFR-05/ARC-12 and the acceptance scenario require security + RAI + ATO + CAB + rollback + Must-level IV&V *before* go-live; none of these can be short-circuited by any strategy, including Least Cost.
- **T-GOV-SYSTEM** — ARC-08/governance scenario name Azure DevOps for work tracking and source control, while this Ring 0 package is tracked in GitHub (OQ-03, Medium). A governance-system reconciliation is a Ring 1 planning decision; restating the ADO standard here is a boundary, not a commitment.

---

## Strategy A1: Least Cost

**Philosophy:** Deliver every Must exactly once through the smallest set of overlapping capability increments, folding transcript refinements (DISC-*) into their parent SOW/ARC controls rather than building parallel machinery, and deferring only genuinely optional (Could) and independently-measurable Should items to the latest safe ring. Reuse the authoritative platform control envelope as-is; add nothing beyond what a Must requires.

### Outcome-Oriented Capability Increments

| # | Capability increment (outcome) | Description | Dependencies | Effort |
| --- | --- | --- | --- | --- |
| 1 | CAP-IDENT + CAP-BOUNDARY (fused control baseline) | Establish the authenticated, US-resident, tenant-contained, no-train, diagnostics-scrubbed envelope as a single control outcome reused everywhere | None | MED |
| 2 | CAP-AUTHZ (pre-retrieval scope) | Decide BU scope before retrieval; treat DISC-02 as the enforcement detail of BR-03/ARC-03, not a separate stream | WP-1 | MED |
| 3 | CAP-DATA (read-only source access) | Consume the four approved sources only in their defined modes; nightly export sets the freshness ceiling | WP-1 | MED |
| 4 | CAP-GROUND + CAP-LOCATION (cited, location-safe answers) | One answer path that always cites and always resolves to a named location; no separate "location engine" | WP-2, WP-3 | HIGH |
| 5 | CAP-REFUSE + CAP-UNCERTAIN + CAP-READONLY (safe-boundary path) | Single guard path: refuse prohibited/coverage, route to benefits, state honest uncertainty, never write | WP-2, WP-3 | MED |
| 6 | CAP-FRESH (freshness honesty) | Attach freshness context to amendment answers; stage the intra-day business-agreement decision (T-FRESH-CONFLICT) | WP-3, WP-4 | LOW |
| 7 | CAP-AUDIT (retention) | Retain queries/responses and refusal events for 7 years on the audit plane, distinct from diagnostics | WP-1, WP-5 | MED |
| 8 | CAP-GOV (governance minimum) | Enforce allowlist + model-change baseline/CAB; reconcile ADO-vs-current tracking as a planning decision | WP-1 | LOW |
| 9 | CAP-PERF + CAP-AVAIL (measured Shoulds) | Measure median-<6s and 99.5% against real operating conditions; report, do not over-engineer | WP-4, WP-5 | LOW |
| 10 | CAP-RELEASE (single consolidated gate) | Assemble security + RAI + ATO + CAB + rollback + Must-IV&V evidence once at the release boundary | all | HIGH |

### Ring Mapping (Ring 0–5)

| Ring | Deliverables (outcomes) | Gate Criteria |
| --- | --- | --- |
| Ring-0 Intake | Requirements/constraint register, this decomposition, staged tensions (T-FRESH-CONFLICT, T-REFUSAL-EVIDENCE, T-GOV-SYSTEM) logged | All Must tags captured; brainstorm complete |
| Ring-1 Planning | Control-envelope plan (WP-1), source-access + authorization approach (WP-2, WP-3), freshness/ refusal/gov open-question dispositions, cost/token baseline | Musts traced; OQ-01/02/03 have owners; architecture-neutral |
| Ring-2 Development | CAP-GROUND+LOCATION, CAP-REFUSE+UNCERTAIN, CAP-AUTHZ, CAP-DATA, CAP-AUDIT realized to Must | Every Must scenario demonstrable; CAP-FEEDBACK deferred |
| Ring-3 IV&V | Independent validation of all Musts; T-AUTHZ-TIMING, T-CITE-LEAK, T-AUDIT-DIAG verified; accessibility check on any surface | All Must scenarios pass IV&V |
| Ring-4 Release readiness | CAP-RELEASE evidence assembled; CAP-PERF/CAP-AVAIL measured | Security + RAI + ATO + CAB + rollback present |
| Ring-5 Operations | Steady-state measurement of Shoulds; staged Could items reconsidered | Availability/latency observed within targets |

### Trade-offs

- **What's included:** Every Must BR/NFR/ARC/DISC, both Should items (BR-05/NFR-03) at measure-and-report depth, all four unnumbered SOW scenarios, read-only.
- **What's deferred (not dropped):** CAP-FEEDBACK (BR-07/DISC-06, Could) staged to Ring-5 reconsideration; deep freshness remediation deferred pending business agreement; refusal-evidence depth held at BR-06 generic retention until OQ-02 resolves.
- **Risks:** Folding DISC refinements into parents risks under-weighting location safety (T-LOCATION-GROUND) and refusal-evidence specificity (T-REFUSAL-EVIDENCE); lean measurement may under-characterize NFR-03. Mitigated by fail-safe to CAP-UNCERTAIN and by explicit OQ ownership at Ring-1.
- **Estimated relative effort:** LOW–MEDIUM.

### Risk / Constraint Treatment

- **T-AUTHZ-TIMING / T-CITE-LEAK:** WP-2 before WP-4 ordering makes pre-retrieval scoping a hard precondition of grounding; citation ids are drawn only from already-authorized records.
- **T-FRESH-CONFLICT:** WP-6 delivers freshness *context*, not intra-day currency; business-agreement decision staged to Ring-1 (never resolved by claiming freshness).
- **T-AUDIT-DIAG:** WP-7 and WP-1 keep audit and diagnostic planes separate by design intent (no provider payload in diagnostics; full retention on audit).
- **T-GATE-SEQUENCE:** Even at least cost, WP-10 cannot be skipped; go-live blocked without all five gate artifacts.

### Architecture-Neutral Boundary Assessment — A1

| Check | Result |
| --- | --- |
| Names a specific component / product beyond restating an authoritative ARC standard? | **PASS** (no — only ARC-08/09/11 standards restated as constraints) |
| Selects deployment topology / region layout beyond ARC-04 boundary? | **PASS** (no) |
| Selects database / index / retrieval mechanism / model / runtime? | **PASS** (no — CAP-* are outcomes) |
| Commits an architecture pattern? | **PASS** (no) |
| Omits any Must BR/NFR/ARC/DISC? | **PASS** (no) |
| Promotes BR-07/DISC-06 above Could? | **PASS** (no) |

**A1 Boundary verdict: PASS.**

### A1 Coverage Map (all tags)

| Tag | Priority | Increment(s) | Ring staged | Treatment |
| --- | --- | --- | --- | --- |
| BR-01 | Must | WP-4 | R2 | Full |
| BR-02 | Must | WP-4 | R2 | Full (ids from authorized set) |
| BR-03 | Must | WP-2 | R2 | Full via pre-retrieval scope |
| BR-04 | Must | WP-5 | R2 | Full refuse |
| BR-05 | Should | WP-9 | R4/R5 | Measure & report |
| BR-06 | Must | WP-7 | R2 | Full 7-yr retention |
| BR-07 | Could | WP (deferred) | R5 | Deferred, not dropped |
| BR-08 | Must | WP-5 | R2 | Full uncertainty |
| NFR-01 | Must | WP-1 | R1/R2 | Full |
| NFR-02 | Must | WP-1 | R1/R2 | Full |
| NFR-03 | Should | WP-9 | R4/R5 | Measure & report |
| NFR-04 | Must | WP-10 | R4 | Gate evidence |
| NFR-05 | Must | WP-10 | R4 | Gate evidence |
| ARC-01 | Must | WP-1 | R1/R2 | Full |
| ARC-02 | Must | WP-1 | R1/R2 | Full |
| ARC-03 | Must | WP-2 | R2 | Full pre-retrieval |
| ARC-04 | Must | WP-1 | R1/R2 | Full |
| ARC-05 | Must | WP-1 | R1/R2 | Full |
| ARC-06 | Must | WP-1 | R1/R2 | Full |
| ARC-07 | Must | WP-1/WP-7 | R2 | Diagnostic scrub |
| ARC-08 | Must | WP-1/WP-8 | R1 | Standards restated as constraint |
| ARC-09 | Must | WP-8 | R1/R2 | Allowlist enforced |
| ARC-10 | Must | WP-8 | R1 | Baseline + CAB |
| ARC-11 | Must | WP-3 | R2 | Defined modes only |
| ARC-12 | Must | WP-10 | R4 | All gates |
| ARC-13 | Must | WP-6 | R2 | No intra-day claim |
| ARC-14 | Must | WP-4 | R2 | Location context |
| DISC-01 | Must | WP-4 | R2 | Location-level |
| DISC-02 | Must | WP-2 | R2 | Pre-retrieval |
| DISC-03 | Must | WP-5/WP-7 | R2 | Refuse+route+log (OQ-02 staged) |
| DISC-04 | Must | WP-5 | R2 | Location-specific "not found" |
| DISC-05 | Must | WP-6 | R2 | Freshness context (T-FRESH staged) |
| DISC-06 | Could | WP (deferred) | R5 | Deferred, not dropped |
| ELAB-01 | Should | WP-9 | R4/R5 | 5s/10s reference points |
| Do not write | Must | WP-5 | R2 | Read-only |
| Exclude prohibited subject matter | Must | WP-5 | R2 | Full exclusion |
| Enforce contractual release acceptance conditions | Must | WP-10 | R4 | Must-IV&V + RAI + ATO |
| Use required delivery governance constraints | Must | WP-8 | R1 | ADO/allowlist/CAB (T-GOV staged) |
| Keep first release read only | Must | WP-5 | R2 | Read-only (overlaps "Do not write") |

---

## Strategy A2: Shortest Time to Deliver

**Philosophy:** Reach the earliest usable, gate-eligible delivery by running the independent safety, authorization, grounding, and control-envelope streams in parallel from the start, so the critical path is only the irreducible sequence CAP-AUTHZ → CAP-GROUND → IV&V → release gates. Defer everything that does not block a Must scenario or a gate.

### Outcome-Oriented Capability Increments

| # | Capability increment (outcome) | Description | Dependencies | Timeline |
| --- | --- | --- | --- | --- |
| 1 | CAP-IDENT | Entra-only + managed-identity access outcome | None | SHORT |
| 2 | CAP-BOUNDARY | US residency + tenant + no-train + diagnostics scrub outcome | None (parallel to WP-1) | SHORT |
| 3 | CAP-DATA | Read-only/nightly access to the four sources | None (parallel) | MED |
| 4 | CAP-AUTHZ | Pre-retrieval BU scope decision | WP-1 | MED |
| 5 | CAP-GROUND + CAP-LOCATION | Cited, location-safe answer outcome | WP-3, WP-4 | LONG (critical path) |
| 6 | CAP-REFUSE + CAP-UNCERTAIN + CAP-READONLY | Safe-boundary guard path | WP-1 (parallel to WP-5) | MED |
| 7 | CAP-FRESH | Freshness-context outcome; intra-day decision staged | WP-3 | SHORT |
| 8 | CAP-AUDIT | Retention + refusal-event capture | WP-2 (parallel) | MED |
| 9 | CAP-GOV | Allowlist + model-change baseline/CAB | WP-1 (parallel) | SHORT |
| 10 | CAP-RELEASE | Gate-evidence assembly | WP-5, WP-6, WP-8, IV&V | MED |
| 11 | CAP-PERF + CAP-AVAIL | Measured Shoulds (fast-follow, non-blocking) | WP-5 | SHORT |

### Parallel Streams

| Stream | Increments | Can start immediately? |
| --- | --- | --- |
| Control envelope | WP-1, WP-2, WP-9 | Yes |
| Data access | WP-3, WP-7 | Yes |
| Safety guard | WP-6, WP-8 | Yes (WP-6 after WP-1) |
| Answer path (critical) | WP-4 → WP-5 | WP-4 after WP-1; WP-5 after WP-3+WP-4 |
| Gate + measurement | WP-10, WP-11 | After answer path + IV&V |

### Ring Mapping (Ring 0–5)

| Ring | Deliverables | Gate Criteria |
| --- | --- | --- |
| Ring-0 | Same intake package; tensions logged | Musts captured; brainstorm complete |
| Ring-1 | Parallel-stream plan; critical path = CAP-AUTHZ→CAP-GROUND; OQ-01/02/03 owners; token baseline | Traceability + architecture-neutral plan |
| Ring-2 | All Must streams delivered concurrently; Shoulds as fast-follow; Coulds deferred | Must scenarios demonstrable |
| Ring-3 | Compressed but complete IV&V of Musts; T-AUTHZ-TIMING/T-CITE-LEAK/T-AUDIT-DIAG verified | No Must waived for speed |
| Ring-4 | Gate evidence assembled; measurement fast-follow | All five gates present |
| Ring-5 | Shoulds confirmed in operation; Coulds reconsidered | Targets observed |

### Trade-offs

- **What's included:** All Musts, both Shoulds (measured as fast-follow), all four unnumbered SOW scenarios, read-only.
- **What's deferred for speed (not dropped):** CAP-FEEDBACK (BR-07/DISC-06, Could) to Ring-5; deep NFR-03/BR-05 tuning to fast-follow after the median/availability are demonstrated; freshness remediation beyond honest context awaits the staged business decision.
- **Risks:** Parallelism raises integration risk at the CAP-AUTHZ↔CAP-GROUND seam (T-AUTHZ-TIMING) and the audit/diagnostic seam (T-AUDIT-DIAG); compressed IV&V could tempt Must-waivers — explicitly disallowed by T-GATE-SEQUENCE. Freshness and refusal-evidence open questions must not be resolved by assumption under time pressure.
- **Estimated relative timeline:** SHORT–MEDIUM (critical path is the authorization→grounding→IV&V→gate chain).

### Risk / Constraint Treatment

- **T-AUTHZ-TIMING / T-CITE-LEAK:** The one hard ordering constraint that cannot be parallelized; WP-4 gates WP-5. Speed comes from parallelizing *everything else*, never this seam.
- **T-AUDIT-DIAG:** WP-2 and WP-8 run in parallel but keep planes separate; integration test explicitly checks no provider payload reaches diagnostics.
- **T-FRESH-CONFLICT / T-REFUSAL-EVIDENCE:** Staged decisions carried as Ring-1 blockers; speed does not authorize assuming their resolution.
- **T-GATE-SEQUENCE:** Fast delivery still terminates at the full five-gate boundary; no gate is a fast-follow.

### Architecture-Neutral Boundary Assessment — A2

| Check | Result |
| --- | --- |
| Names a specific component/product beyond restating an authoritative ARC standard? | **PASS** |
| Selects deployment topology / region layout beyond ARC-04? | **PASS** (parallelism is a sequencing choice, not a topology) |
| Selects database / index / model / runtime? | **PASS** |
| Commits an architecture pattern? | **PASS** |
| Omits any Must? | **PASS** |
| Promotes BR-07/DISC-06 above Could? | **PASS** |

**A2 Boundary verdict: PASS.**

### A2 Coverage Map (all tags)

| Tag | Priority | Increment(s) | Ring staged | Treatment |
| --- | --- | --- | --- | --- |
| BR-01 | Must | WP-5 | R2 | Full |
| BR-02 | Must | WP-5 | R2 | Full |
| BR-03 | Must | WP-4 | R2 | Pre-retrieval scope |
| BR-04 | Must | WP-6 | R2 | Full refuse |
| BR-05 | Should | WP-11 | R4/R5 | Fast-follow measure |
| BR-06 | Must | WP-8 | R2 | Full retention |
| BR-07 | Could | deferred | R5 | Deferred, not dropped |
| BR-08 | Must | WP-6 | R2 | Full uncertainty |
| NFR-01 | Must | WP-2 | R2 | Full |
| NFR-02 | Must | WP-2 | R2 | Full |
| NFR-03 | Should | WP-11 | R4/R5 | Fast-follow measure |
| NFR-04 | Must | WP-10 | R4 | Gate |
| NFR-05 | Must | WP-10 | R4 | Gate |
| ARC-01 | Must | WP-1 | R2 | Full |
| ARC-02 | Must | WP-1 | R2 | Full |
| ARC-03 | Must | WP-4 | R2 | Pre-retrieval |
| ARC-04 | Must | WP-2 | R2 | Full |
| ARC-05 | Must | WP-2 | R2 | Full |
| ARC-06 | Must | WP-2 | R2 | Full |
| ARC-07 | Must | WP-2/WP-8 | R2 | Diagnostic scrub |
| ARC-08 | Must | WP-1/WP-9 | R1 | Standards restated |
| ARC-09 | Must | WP-9 | R1/R2 | Allowlist |
| ARC-10 | Must | WP-9 | R1 | Baseline + CAB |
| ARC-11 | Must | WP-3 | R2 | Defined modes |
| ARC-12 | Must | WP-10 | R4 | All gates |
| ARC-13 | Must | WP-7 | R2 | No intra-day claim |
| ARC-14 | Must | WP-5 | R2 | Location context |
| DISC-01 | Must | WP-5 | R2 | Location-level |
| DISC-02 | Must | WP-4 | R2 | Pre-retrieval |
| DISC-03 | Must | WP-6/WP-8 | R2 | Refuse+route+log (OQ-02 staged) |
| DISC-04 | Must | WP-6 | R2 | Location-specific "not found" |
| DISC-05 | Must | WP-7 | R2 | Freshness context (staged) |
| DISC-06 | Could | deferred | R5 | Deferred, not dropped |
| ELAB-01 | Should | WP-11 | R4/R5 | 5s/10s reference |
| Do not write | Must | WP-6 | R2 | Read-only |
| Exclude prohibited subject matter | Must | WP-6 | R2 | Full exclusion |
| Enforce contractual release acceptance conditions | Must | WP-10 | R4 | Must-IV&V + RAI + ATO |
| Use required delivery governance constraints | Must | WP-9 | R1 | ADO/allowlist/CAB (staged) |
| Keep first release read only | Must | WP-6 | R2 | Read-only |

---

## Strategy A3: Most Comprehensive Scope

**Philosophy:** Maximize coverage, evidence depth, and resilience across every requirement and every surfaced tension — full IV&V, full RAI lifecycle, exhaustive audit/refusal evidence, edge-case and negative-path hardening, and explicit remediation of every open question — while still respecting priority discipline: BR-07/DISC-06 are delivered as first-class **Could** capabilities, not promoted to Must.

### Outcome-Oriented Capability Increments

| # | Capability increment (outcome) | Description | Dependencies | Scope |
| --- | --- | --- | --- | --- |
| 1 | CAP-IDENT (hardened) | Entra-only + managed identity with negative-path proofs (no static credential accepted) | None | COMP |
| 2 | CAP-BOUNDARY (full) | US residency, tenant containment, no-train, diagnostics scrub — each independently evidenced | None | COMP |
| 3 | CAP-AUTHZ (defense-in-depth) | Pre-retrieval scope with explicit proof that post-retrieval filtering is absent (T-AUTHZ-TIMING) | WP-1 | COMP |
| 4 | CAP-DATA (all four modes, resilience) | Read-only/nightly access with failure-mode handling for each source | WP-1 | COMP |
| 5 | CAP-GROUND + CAP-LOCATION (edge-hardened) | Cited answers with location disambiguation, multi-location conflict handling, citation-leak guards (T-CITE-LEAK, T-LOCATION-GROUND) | WP-3, WP-4 | COMP |
| 6 | CAP-REFUSE + CAP-UNCERTAIN (exhaustive negatives) | Full prohibited-subject taxonomy, benefits-team routing, location/amendment-specific uncertainty, no-invention proofs | WP-1 | COMP |
| 7 | CAP-READONLY (proven) | Explicit proof no write path exists to any system of record | WP-1 | COMP |
| 8 | CAP-FRESH (full remediation path) | Freshness context plus a resolved business-agreement disposition for T-FRESH-CONFLICT (still no intra-day claim) | WP-4, business decision | COMP |
| 9 | CAP-AUDIT (refusal-evidence depth) | 7-yr retention with dedicated refusal-event evidence resolving T-REFUSAL-EVIDENCE, plane-separated from diagnostics (T-AUDIT-DIAG) | WP-2, WP-6 | COMP |
| 10 | CAP-GOV (full) | Allowlist, model-change baseline + CAB, and reconciled ADO governance-system disposition (T-GOV-SYSTEM) | WP-1 | COMP |
| 11 | CAP-PERF + CAP-AVAIL (characterized) | Median-<6s and 99.5% measured under representative + stress conditions, with 5s/10s UX reference reporting | WP-5 | COMP |
| 12 | CAP-FEEDBACK (Could, first-class) | Inline rating **and** optional negative comment delivered — explicitly retained as Could, not Must | WP-5 | MOD |
| 13 | CAP-RELEASE (full gate + evidence pack) | Security, RAI, ATO, CAB, rollback, Must-IV&V, accessibility, and audit-readiness assembled as a complete evidence package | all | COMP |

### Ring Mapping (Ring 0–5)

| Ring | Deliverables | Gate Criteria |
| --- | --- | --- |
| Ring-0 | Intake + full tension register + open-question remediation plan | Musts captured; every tension has a disposition path |
| Ring-1 | Comprehensive plan incl. threat-model intent, RAI lifecycle intent, freshness/refusal/gov remediation; full cost/token baseline | Traceability complete; architecture-neutral; OQs owned with remediation |
| Ring-2 | All Musts + both Shoulds + Could (CAP-FEEDBACK) developed with edge/negative hardening | All scenarios demonstrable incl. negatives |
| Ring-3 | Full IV&V incl. every tension proof, dependency/OSS audit, accessibility verification | All Musts pass; Sev-1/2 findings cleared |
| Ring-4 | Complete release evidence pack; RAI + security + ATO + CAB + rollback signed; measurement characterized | Every gate satisfied with evidence |
| Ring-5 | Operational monitoring of all four golden signals; Could items live; continuous freshness/refusal review | SLO/latency/availability observed; evidence retained |

### Trade-offs

- **What's included:** Everything — all Musts, both Shoulds at characterized depth, both Coulds (BR-07/DISC-06) delivered while remaining Could, all four unnumbered SOW scenarios, read-only, plus resolution paths for OQ-01/02/03 and every T-* tension.
- **Additional coverage beyond core:** Negative-path and edge-case hardening, defense-in-depth authorization proofs, refusal-evidence depth, stress-characterized performance/availability, accessibility verification, full evidence pack.
- **Risks:** Scope, effort, and token cost are highest; risk of over-building around Could items and of schedule pressure on gates. Mitigated by priority discipline (Coulds stay Could) and by treating comprehensiveness as *evidence depth*, not scope inflation beyond the corpus.
- **Estimated relative scope:** COMPREHENSIVE.

### Risk / Constraint Treatment

- **T-AUTHZ-TIMING / T-CITE-LEAK:** WP-3 delivers explicit negative proof that post-retrieval filtering is absent and that citations never expose out-of-scope ids.
- **T-LOCATION-GROUND:** WP-5 adds multi-location conflict handling and fail-safe to CAP-UNCERTAIN when location context is insufficient.
- **T-FRESH-CONFLICT:** WP-8 carries the business-agreement to a resolved disposition while ARC-13 still forbids intra-day claims — remediation, never violation.
- **T-AUDIT-DIAG / T-REFUSAL-EVIDENCE:** WP-9 resolves whether generic retention satisfies DISC-03 and keeps planes separate with evidence.
- **T-GOV-SYSTEM:** WP-10 delivers a reconciled governance-system disposition (ADO standard vs. current tracking).
- **T-GATE-SEQUENCE:** WP-13 is the exhaustive terminal gate; nothing bypasses it.

### Architecture-Neutral Boundary Assessment — A3

| Check | Result |
| --- | --- |
| Names a specific component/product beyond restating an authoritative ARC standard? | **PASS** (threat-model / RAI / IV&V named as *activities/outcomes*, not products) |
| Selects deployment topology / region layout beyond ARC-04? | **PASS** |
| Selects database / index / model / runtime? | **PASS** |
| Commits an architecture pattern? | **PASS** |
| Omits any Must? | **PASS** |
| Promotes BR-07/DISC-06 above Could? | **PASS** (delivered but explicitly retained as Could) |

**A3 Boundary verdict: PASS.**

### A3 Coverage Map (all tags)

| Tag | Priority | Increment(s) | Ring staged | Treatment |
| --- | --- | --- | --- | --- |
| BR-01 | Must | WP-5 | R2 | Full + edge |
| BR-02 | Must | WP-5 | R2 | Full + leak guard |
| BR-03 | Must | WP-3 | R2 | Defense-in-depth |
| BR-04 | Must | WP-6 | R2 | Full + taxonomy |
| BR-05 | Should | WP-11 | R4 | Characterized |
| BR-06 | Must | WP-9 | R2 | Full + refusal depth |
| BR-07 | Could | WP-12 | R2 | Delivered, stays Could |
| BR-08 | Must | WP-6 | R2 | Full + no-invention proof |
| NFR-01 | Must | WP-2 | R2 | Evidenced |
| NFR-02 | Must | WP-2 | R2 | Evidenced |
| NFR-03 | Should | WP-11 | R4 | Characterized |
| NFR-04 | Must | WP-13 | R4 | RAI signed |
| NFR-05 | Must | WP-13 | R4 | Security + ATO |
| ARC-01 | Must | WP-1 | R2 | Hardened |
| ARC-02 | Must | WP-1 | R2 | Negative-path proof |
| ARC-03 | Must | WP-3 | R2 | Pre-retrieval proof |
| ARC-04 | Must | WP-2 | R2 | Evidenced |
| ARC-05 | Must | WP-2 | R2 | Evidenced |
| ARC-06 | Must | WP-2 | R2 | Evidenced |
| ARC-07 | Must | WP-2/WP-9 | R2 | Plane-separated |
| ARC-08 | Must | WP-1/WP-10 | R1 | Standards restated |
| ARC-09 | Must | WP-10 | R1/R2 | Allowlist |
| ARC-10 | Must | WP-10 | R1 | Baseline + CAB |
| ARC-11 | Must | WP-4 | R2 | Modes + resilience |
| ARC-12 | Must | WP-13 | R4 | Full gate pack |
| ARC-13 | Must | WP-8 | R2 | No intra-day claim |
| ARC-14 | Must | WP-5 | R2 | Multi-location handling |
| DISC-01 | Must | WP-5 | R2 | Location-level + edge |
| DISC-02 | Must | WP-3 | R2 | Pre-retrieval proof |
| DISC-03 | Must | WP-6/WP-9 | R2 | Refuse+route+evidence (OQ-02 resolved) |
| DISC-04 | Must | WP-6 | R2 | Location-specific "not found" |
| DISC-05 | Must | WP-8 | R2 | Freshness + business disposition |
| DISC-06 | Could | WP-12 | R2 | Delivered, stays Could |
| ELAB-01 | Should | WP-11 | R4 | 5s/10s characterized |
| Do not write | Must | WP-7 | R2 | Proven read-only |
| Exclude prohibited subject matter | Must | WP-6 | R2 | Full taxonomy |
| Enforce contractual release acceptance conditions | Must | WP-13 | R4 | Must-IV&V + RAI + ATO |
| Use required delivery governance constraints | Must | WP-10 | R1 | ADO/allowlist/CAB reconciled |
| Keep first release read only | Must | WP-7 | R2 | Proven read-only |

---

## Final Scenario Coverage Ledger (39 scenarios)

> ARC-08 is **one Scenario Outline** (six examples) and is counted as a single scenario. Count below reflects distinct scenarios.

| # | Feature | Exact scenario | Tags | A1 elements | A2 elements | A3 elements | Treatment | Tension / omission |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | SOW | Return a grounded answer to an in-scope provider-network question | @BR-01 @must | WP-4 | WP-5 | WP-5 | Full | Depends on CAP-AUTHZ (T-AUTHZ-TIMING) |
| 2 | SOW | Cite every factual claim | @BR-02 @must | WP-4 | WP-5 | WP-5 | Full | T-CITE-LEAK — ids from authorized set |
| 3 | SOW | Restrict results to the analyst business unit | @BR-03 @must | WP-2 | WP-4 | WP-3 | Full | T-AUTHZ-TIMING vs pre-retrieval |
| 4 | SOW | Refuse a coverage-determination question | @BR-04 @must @negative | WP-5 | WP-6 | WP-6 | Full | Links DISC-03 routing |
| 5 | SOW | Meet the response-time objective | @BR-05 @should @metric | WP-9 | WP-11 | WP-11 | Measure; A3 characterized | Should staged to R4/R5 |
| 6 | SOW | Retain query and response records | @BR-06 @must @audit | WP-7 | WP-8 | WP-9 | Full 7-yr | T-AUDIT-DIAG plane separation |
| 7 | SOW | Rate answer quality inline | @BR-07 @could @feedback | deferred | deferred | WP-12 | Could — never Must | Deferred A1/A2; delivered-as-Could A3 |
| 8 | SOW | State uncertainty when no answer is found | @BR-08 @must @negative | WP-5 | WP-6 | WP-6 | Full | Links DISC-04 |
| 9 | SOW | Keep processing in United States regions | @NFR-01 @must @residency | WP-1 | WP-2 | WP-2 | Full | ARC-04 boundary |
| 10 | SOW | Keep provider and member data within the UHG tenant | @NFR-02 @must @tenant-boundary | WP-1 | WP-2 | WP-2 | Full | ARC-05 boundary |
| 11 | SOW | Meet business-hours availability target | @NFR-03 @should @availability | WP-9 | WP-11 | WP-11 | Measure; A3 characterized | Should staged |
| 12 | SOW | Require responsible AI assessment before production | @NFR-04 @must @release-gate | WP-10 | WP-10 | WP-13 | Gate | T-GATE-SEQUENCE |
| 13 | SOW | Require security review and ATO before go-live | @NFR-05 @must @release-gate | WP-10 | WP-10 | WP-13 | Gate | T-GATE-SEQUENCE |
| 14 | SOW | Do not write to a system of record | @scope @negative | WP-5 | WP-6 | WP-7 | Full read-only | Overlaps #39 |
| 15 | SOW | Exclude prohibited subject matter | @scope @negative | WP-5 | WP-6 | WP-6 | Full exclusion | C-02 boundary |
| 16 | SOW | Enforce contractual release acceptance conditions | @constraint @acceptance | WP-10 | WP-10 | WP-13 | Must-IV&V + RAI + ATO | T-GATE-SEQUENCE |
| 17 | SOW | Use required delivery governance constraints | @constraint @governance | WP-8 | WP-9 | WP-10 | ADO/allowlist/CAB | T-GOV-SYSTEM (OQ-03) |
| 18 | Platform | Accept Microsoft Entra ID only | @ARC-01 @identity | WP-1 | WP-1 | WP-1 | Full | Authoritative constraint |
| 19 | Platform | Disallow static application credentials | @ARC-02 @managed-identity @negative | WP-1 | WP-1 | WP-1 | Full; A3 neg-proof | Authoritative constraint |
| 20 | Platform | Evaluate authorization before retrieval | @ARC-03 @authorization | WP-2 | WP-4 | WP-3 | Full pre-retrieval | T-AUTHZ-TIMING |
| 21 | Platform | Keep processing and storage in United States Azure regions | @ARC-04 @residency | WP-1 | WP-2 | WP-2 | Full | Authoritative constraint |
| 22 | Platform | Prevent customer data from leaving the tenant | @ARC-05 @tenant-boundary | WP-1 | WP-2 | WP-2 | Full | Authoritative constraint |
| 23 | Platform | Prohibit training and fine tuning on customer data | @ARC-06 @negative @model-governance | WP-1 | WP-2 | WP-2 | Full | Authoritative constraint |
| 24 | Platform | Exclude provider payloads from diagnostic logging | @ARC-07 @diagnostics @negative | WP-1/WP-7 | WP-2/WP-8 | WP-2/WP-9 | Full scrub | T-AUDIT-DIAG |
| 25 | Platform | Use the approved platform service for each capability | @ARC-08 @approved-services | WP-1/WP-8 | WP-1/WP-9 | WP-1/WP-10 | Standards restated | Scenario Outline (6 examples = 1) |
| 26 | Platform | Restrict model use to the approved allowlist | @ARC-09 @model-governance | WP-8 | WP-9 | WP-10 | Allowlist | Authoritative constraint |
| 27 | Platform | Govern a model version change | @ARC-10 @change-control | WP-8 | WP-9 | WP-10 | Baseline + CAB | Authoritative constraint |
| 28 | Platform | Access all approved data sources using their defined modes | @ARC-11 @data-sources | WP-3 | WP-3 | WP-4 | Defined modes only | Sets freshness ceiling (T-FRESH) |
| 29 | Platform | Enforce all production release gates | @ARC-12 @release-gate | WP-10 | WP-10 | WP-13 | All five gates | T-GATE-SEQUENCE |
| 30 | Platform | Do not claim intra-day amendment freshness | @ARC-13 @risk @freshness | WP-6 | WP-7 | WP-8 | No intra-day claim | T-FRESH-CONFLICT (OQ-01) |
| 31 | Platform | Guard against location-level misinterpretation | @ARC-14 @risk @location | WP-4 | WP-5 | WP-5 | Location context | T-LOCATION-GROUND |
| 32 | Transcript | Answer contract status at the identified location | @DISC-01 @priority-must | WP-4 | WP-5 | WP-5 | Location-level | T-LOCATION-GROUND |
| 33 | Transcript | Authorize before retrieving business-unit data | @DISC-02 @priority-must | WP-2 | WP-4 | WP-3 | Pre-retrieval | T-AUTHZ-TIMING |
| 34 | Transcript | Refuse, route, and log a coverage-determination request | @DISC-03 @priority-must @negative @audit | WP-5/WP-7 | WP-6/WP-8 | WP-6/WP-9 | Refuse+route+log | T-REFUSAL-EVIDENCE (OQ-02) |
| 35 | Transcript | State record-specific uncertainty without inventing an answer | @DISC-04 @priority-must @negative | WP-5 | WP-6 | WP-6 | Location-specific "not found" | Refinement of BR-08 |
| 36 | Transcript | Surface the known amendment freshness limitation | @DISC-05 @priority-must @freshness | WP-6 | WP-7 | WP-8 | Freshness context | T-FRESH-CONFLICT (OQ-01) — staged, not dropped |
| 37 | Transcript | Capture detailed optional negative feedback | @DISC-06 @BR-07 @priority-could @feedback | deferred | deferred | WP-12 | Could — never Must | Deferred A1/A2; delivered-as-Could A3 |
| 38 | Transcript | Measure operational response-time expectation | @ELAB-01 @BR-05 @priority-should @metric | WP-9 | WP-11 | WP-11 | 5s/10s reference | Should staged; refines BR-05 |
| 39 | Transcript | Keep the first release read only | @scope @read-only @negative | WP-5 | WP-6 | WP-7 | Read-only | Overlaps #14 (mapped explicitly) |

**Coverage count: 39/39. No gaps.** All Must BR/NFR/ARC/DISC scenarios are covered in every strategy; BR-07 (#7) and DISC-06 (#37) remain **Could** in all three strategies and are deferred in A1/A2 and delivered-as-Could (not promoted) in A3; both Should items (BR-05 #5, NFR-03 #11, ELAB-01 #38) are staged for measurement without being dropped. Scenarios #14 and #39 are the overlapping read-only pair, mapped explicitly.

### Architecture-Neutral Boundary Assessment — Overall

All three strategies: **PASS**. No component, product (beyond restated authoritative ARC standards), deployment topology, region layout beyond the ARC-04 boundary, database, index, model, runtime, or architecture pattern is selected. Every named UHG standard appears only in §0 and coverage rows as `AUTHORITATIVE CONSTRAINT — not a proposed commitment`. No Must requirement is omitted; BR-07/DISC-06 remain Could throughout.
