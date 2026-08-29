# Brainstorm Decomposition - Model B

**Objective:** Deliver the UHG Provider Network Intelligence Agent covering all 39 scenarios within authoritative ARC constraints.
**Model:** Model B (independent strategic decomposition)
**Date:** 2026-08-28
**Phase boundary:** Ring 0 Phase 1 only. This artifact is not a WBS, schedule, staffing plan, architecture decision, deployment authorization, or Ring 1 start.
**Source boundary:** Brainstorming protocol sections 3-6, the three feature files, and the objective summary only.
**Counting rule:** ARC-08 is one Scenario Outline; its six examples do not create six additional scenarios.

Named standards appearing in exact ARC scenario names or controls are `AUTHORITATIVE CONSTRAINT - not a proposed commitment`. No standard is selected or extended by this decomposition.

## Optimization Frame

| Strategy | Objective function | Primary measure | Non-negotiable floor |
| --- | --- | --- | --- |
| B1 Least Cost | Minimize total delivery effort, duplicated evidence, and model usage | Fewest reusable capability increments and least repeated validation | Every Must BR/NFR/ARC/DISC scenario retained; Should and Could priorities preserved |
| B2 Shortest Time | Minimize elapsed time to the earliest usable, gate-eligible capability | Shortest dependency chain with maximum safe parallelism | No control, safety, or release gate bypassed; all 39 scenarios remain staged |
| B3 Most Comprehensive | Maximize verified coverage, resilience, auditability, and edge-case confidence | Deepest evidence across behavior, controls, operations, and governance | Architecture remains undecided and all source priorities remain unchanged |

The common critical path is: scope and authority baseline -> identity/authorization and data-access boundaries -> grounded location-aware answer behavior -> safety/refusal behavior -> integrated quality and operational evidence -> independent validation and release-control evidence. Data readiness, control evidence, quality measurement, audit/retention evidence, and governance preparation can proceed as parallel capability streams where their stated dependencies permit.

---

## B1 Least Cost

**Philosophy:** Satisfy the full authoritative objective through the smallest set of reusable outcome increments. Reduce cost by combining evidence where scenarios share an observable outcome, reusing approved assets, and deferring only optional depth or polish, never a Must requirement.

**Optimization objective:** Minimize total effort and model usage subject to 39/39 scenario coverage, all authoritative controls, and independent validation of every Must requirement.

### Outcome-Oriented Capability Increments

| Element | Capability outcome | Dependencies | Relative effort |
| --- | --- | --- | --- |
| B1-E1 | A single approved scope, authority, priority, and acceptance baseline preserves all 39 scenarios and resolves decision ownership. | None | LOW |
| B1-E2 | Every request is authenticated, authorized before retrieval, and contained within business-unit, tenant, residency, credential, training, and diagnostic boundaries. | B1-E1 | HIGH |
| B1-E3 | Approved-source information is accessed read-only and produces grounded, claim-level cited, location-specific answers with explicit freshness and uncertainty context. | B1-E1, B1-E2 | HIGH |
| B1-E4 | Prohibited requests and write attempts are consistently refused, routed where required, and captured as auditable outcomes. | B1-E1, B1-E2 | MEDIUM |
| B1-E5 | Interaction retention, response-time, availability, and optional feedback outcomes are measurable without exposing provider payloads in diagnostics. | B1-E2, B1-E3, B1-E4 | MEDIUM |
| B1-E6 | Existing platform, model, delivery, change, and release controls are evidenced as constraints without selecting an implementation architecture. | B1-E1; evidence from B1-E2-B1-E5 | MEDIUM |
| B1-E7 | Independent validation demonstrates all Must outcomes, records Should performance, and preserves Could feedback items for governed staging. | B1-E2-B1-E6 | MEDIUM |

### Critical Path and Parallelism

**Critical path:** B1-E1 -> B1-E2 -> B1-E3 -> B1-E5 -> B1-E7. B1-E4 can begin after B1-E2 and converge at B1-E5. B1-E6 starts with constraint evidence after B1-E1 and converges at B1-E7.

| Parallel capability stream | Elements | Start condition |
| --- | --- | --- |
| Safe answer behavior | B1-E3, B1-E4 | Authorization boundary established by B1-E2 |
| Evidence and governance | B1-E5, B1-E6 | Baseline established; behavioral evidence joins later |
| Optional experience | Could portions of B1-E5 | Core interaction contract stable; not gate-critical |

### Ring 0-5 Mapping

| Ring | Outcome focus | Gate evidence |
| --- | --- | --- |
| Ring 0 | B1-E1 objective, scope, authority, priorities, conflicts, and competing decompositions | 39/39 scenarios traced; ARC constraints explicit; freshness and routing questions visible |
| Ring 1 | Convert selected increments into approved planning, estimates, risks, acceptance evidence, and architecture alternatives | Human decisions recorded; no architecture implied by this decomposition |
| Ring 2 | Realize B1-E2-B1-E6 behavior and control outcomes, with tests defined before changes | Must behavior passes focused tests; Should metrics measured; Could remains correctly prioritized |
| Ring 3 | B1-E7 independent functional, security, privacy, performance, availability, retention, accessibility, and control validation | All Must scenarios pass; defects and Should shortfalls have explicit disposition |
| Ring 4 | Release readiness evidence for rollback, change, security, responsible AI, ATO, and operational support | Every authoritative release condition evidenced; no deployment inferred |
| Ring 5 | Authorized production operation, monitored outcomes, audit preservation, and controlled improvement | Availability, latency, quality, freshness, safety, and audit evidence remain reviewable |

### Coverage Map

| Element | Requirement tags covered | Treatment |
| --- | --- | --- |
| B1-E1 | ARC-08, ARC-09, ARC-10, ARC-12 | Preserve authoritative service, model, change, and release controls as constraints. |
| B1-E2 | BR-03; NFR-01, NFR-02; DISC-02; ARC-01, ARC-02, ARC-03, ARC-04, ARC-05, ARC-06, ARC-07 | One boundary evidence stream; all are mandatory constraints or Must outcomes. |
| B1-E3 | BR-01, BR-02, BR-08; DISC-01, DISC-04, DISC-05; ARC-11, ARC-13, ARC-14 | One grounded-answer increment preserves source, record, location, freshness, and uncertainty distinctions. |
| B1-E4 | BR-04; DISC-03 | Refusal, benefits-team route, and refusal-specific audit evidence remain explicit. |
| B1-E5 | BR-05, BR-06, BR-07; NFR-03; DISC-06; ELAB-01 | BR-06 is mandatory; BR-05/NFR-03/ELAB-01 are measured Shoulds; BR-07/DISC-06 remain Could. |
| B1-E6 | NFR-04, NFR-05; ARC-08, ARC-09, ARC-10, ARC-12 | Reuse release and governance evidence; no control is weakened. |
| B1-E7 | All tags above | Independent acceptance closes Must coverage and records non-Must disposition. |

| Unnumbered scenario, exact name | Element | Treatment |
| --- | --- | --- |
| Do not write to a system of record | B1-E4 | Mandatory read-only negative behavior. |
| Exclude prohibited subject matter | B1-E4 | Mandatory subject boundary and refusal behavior. |
| Enforce contractual release acceptance conditions | B1-E7 | Must validation, responsible AI sign-off, and ATO submission evidence. |
| Use required delivery governance constraints | B1-E6 | Existing delivery, change, and model controls only. |
| Keep the first release read only | B1-E4 | Mandatory first-release boundary; duplicates are tested through reusable evidence. |

### Tradeoffs, Risks, and Deferrals

- **Included:** All 39 scenarios, all Must requirements and ARC controls, independent validation, release-control evidence, Should measurement, and explicit Could staging.
- **Cost lever:** Shared evidence covers overlapping SOW, discovery, and ARC outcomes; no requirement is merged semantically or removed.
- **Deferred:** BR-07 inline rating and DISC-06 negative comment may follow the mandatory first usable increment because both remain Could. Broader performance refinement beyond BR-05/ELAB-01 and availability improvement beyond NFR-03 may follow initial measurement, but the Should scenarios themselves are not dropped.
- **Primary risks:** Combined evidence could hide distinct failure modes; minimal assurance depth could miss rare location/freshness cases; delayed feedback reduces early quality signals.
- **Treatment:** Keep scenario-level acceptance links, require separate assertions for location, freshness, authorization, uncertainty, refusal routing, and retention, and preserve Could items in the governed backlog.
- **Open constraints:** DISC-05 versus nightly amendment availability is treated as truthful freshness disclosure, not invented freshness. DISC-03 benefits-team routing and refusal evidence require authority confirmation before gate readiness.
- **Estimated relative effort:** LOW relative to B2 and B3, but not low in absolute terms because mandatory security, retention, and release evidence cannot be reduced.

### Architecture-Neutral Boundary Assessment

**Result: PASS**

- Defines observable outcomes and dependencies, not components, products, services, data stores, indexes, models, runtimes, or topology.
- Treats named ARC standards only as `AUTHORITATIVE CONSTRAINT - not a proposed commitment`.
- Makes no staffing, date, release, deployment, or architecture decision.
- Defers only priority-appropriate sequencing; no Must BR/NFR/ARC/DISC item is omitted.

---

## B2 Shortest Time

**Philosophy:** Compress elapsed time by establishing a thin end-to-end evidence path early, then run safety, data-answer, operational, and governance streams concurrently. Parallelism never bypasses authorization, read-only, data-boundary, or release controls.

**Optimization objective:** Minimize elapsed time to an independently validated usable capability while retaining all 39 scenarios and converging every mandatory stream before release eligibility.

### Outcome-Oriented Capability Increments

| Element | Capability outcome | Dependencies | Relative time |
| --- | --- | --- | --- |
| B2-E1 | A frozen scenario contract, authority map, and testable acceptance spine removes ambiguity from all streams. | None | SHORT |
| B2-E2 | A boundary-first request path proves authentication, pre-retrieval authorization, read-only access, containment, and safe diagnostics. | B2-E1 | MEDIUM |
| B2-E3 | A thin grounded-answer path proves approved-source citation, location context, uncertainty, and amendment freshness disclosure. | B2-E1; boundary contract from B2-E2 | MEDIUM |
| B2-E4 | A parallel safety path proves prohibited-subject and write refusal, benefits routing, and refusal audit retention. | B2-E1; boundary contract from B2-E2 | SHORT |
| B2-E5 | A parallel assurance path prepares retention, latency, availability, quality, accessibility, security, privacy, and responsible AI evidence. | B2-E1; integrates B2-E2-B2-E4 results | MEDIUM |
| B2-E6 | A parallel governance path prepares authoritative platform, model, change, delivery, rollback, ATO, and release evidence. | B2-E1; integrates B2-E2-B2-E5 evidence | MEDIUM |
| B2-E7 | Integrated independent validation closes 39/39 coverage and produces a release-eligibility record without authorizing release. | B2-E2-B2-E6 | SHORT |

### Critical Path and Parallelism

**Critical path:** B2-E1 -> B2-E2 boundary contract -> B2-E3 -> B2-E5 integration -> B2-E7. The control boundary is deliberately first because answer work that precedes authorization and data-boundary agreement would create rework and unsafe evidence.

| Parallel capability stream | Elements | Can start immediately? |
| --- | --- | --- |
| Scenario and evidence spine | B2-E1 | Yes |
| Request boundaries | B2-E2 | After B2-E1 |
| Grounded location-aware answers | B2-E3 | After B2-E1; integration waits for B2-E2 |
| Refusal and read-only safety | B2-E4 | After B2-E1; integration waits for B2-E2 |
| Operational and quality assurance | B2-E5 | Evidence design after B2-E1; results wait for B2-E2-B2-E4 |
| Governance and release readiness | B2-E6 | Evidence design after B2-E1; closure waits for B2-E2-B2-E5 |

### Ring 0-5 Mapping

| Ring | Outcome focus | Gate evidence |
| --- | --- | --- |
| Ring 0 | B2-E1 source contract, tensions, priority preservation, and independent decomposition | 39/39 scenario ledger and critical path agreed for comparison only |
| Ring 1 | Rapidly approve capability boundaries, parallel evidence contracts, risks, estimates, and architecture alternatives | Stream interfaces and acceptance conditions approved before implementation |
| Ring 2 | Execute B2-E2-B2-E6 concurrently, integrating through the thin end-to-end answer and refusal paths | Each stream produces passing focused evidence; mandatory controls converge |
| Ring 3 | B2-E7 integrated IV&V, security, responsible AI, performance, availability, retention, accessibility, and regression validation | 39/39 scenarios disposed; all Must pass; Should results explicit |
| Ring 4 | Complete release-control, rollback, operational, and authorization evidence | No gate bypass; all authoritative approvals remain external decisions |
| Ring 5 | Operate only after authorization, with monitored safety, quality, latency, availability, freshness, and audit outcomes | Production evidence supports controlled correction and model-change baselines |

### Coverage Map

| Element | Requirement tags covered | Treatment |
| --- | --- | --- |
| B2-E1 | All BR, NFR, ARC, DISC, and ELAB tags | Shared acceptance spine enables concurrency without collapsing scenario identity. |
| B2-E2 | BR-03; NFR-01, NFR-02; DISC-02; ARC-01, ARC-02, ARC-03, ARC-04, ARC-05, ARC-06, ARC-07 | Boundary-first critical-path increment. |
| B2-E3 | BR-01, BR-02, BR-08; DISC-01, DISC-04, DISC-05; ARC-11, ARC-13, ARC-14 | Earliest usable answer increment, subject to B2-E2. |
| B2-E4 | BR-04, BR-06; DISC-03 | Refusal, route, and auditable retention proceed in parallel with answer behavior. |
| B2-E5 | BR-05, BR-06, BR-07; NFR-03; DISC-06; ELAB-01 | Retention is mandatory; Should metrics are measured; BR-07/DISC-06 remain Could and may be later Ring 2 increments. |
| B2-E6 | NFR-04, NFR-05; ARC-08, ARC-09, ARC-10, ARC-12 | Prepare controls concurrently; no release gate is compressed out. |
| B2-E7 | All tags above | Integrated validation closes every stream before release eligibility. |

| Unnumbered scenario, exact name | Element | Treatment |
| --- | --- | --- |
| Do not write to a system of record | B2-E4 | Early negative path. |
| Exclude prohibited subject matter | B2-E4 | Early classifier/refusal outcome without architecture prescription. |
| Enforce contractual release acceptance conditions | B2-E7 | Final convergence criterion; cannot be fast-tracked away. |
| Use required delivery governance constraints | B2-E6 | Concurrent governance evidence under existing controls. |
| Keep the first release read only | B2-E4 | Early and persistent release boundary. |

### Tradeoffs, Risks, and Deferrals

- **Included:** All mandatory behavior and controls, all 39 scenario dispositions, parallel assurance, and a thin end-to-end usable path.
- **Time lever:** Evidence contracts begin together; answer and refusal behavior proceed in parallel after the authorization boundary is fixed.
- **Deferred:** BR-07 and DISC-06 remain Could and may land after the earliest mandatory usable increment. Deep edge-case expansion beyond the 39 scenarios, optimization beyond Should thresholds, and non-gate documentation polish may follow integrated validation. No source requirement is discarded.
- **Primary risks:** Parallel streams may diverge on evidence semantics; integration may expose late conflicts; expedited measurement may underrepresent operating variability.
- **Treatment:** Freeze scenario-level contracts in B2-E1, define convergence evidence before parallel work, use the boundary contract as a blocking dependency, and reserve integrated regression and independent validation in B2-E7.
- **Critical tension:** DISC-05 cannot accelerate the nightly source mode. Speed comes from truthful freshness context and early business disposition, never from claiming unavailable data.
- **Estimated relative timeline:** SHORT relative to B1 and B3, with potentially higher coordination and validation cost.

### Architecture-Neutral Boundary Assessment

**Result: PASS**

- Parallel streams are capability outcomes, not teams, components, services, or deployment units.
- No dates, staffing, topology, data-store, index, model, runtime, or product choice is made.
- Named ARC standards remain `AUTHORITATIVE CONSTRAINT - not a proposed commitment`.
- All Must BR/NFR/ARC/DISC items converge before release eligibility; only priority-consistent depth is deferred.

---

## B3 Most Comprehensive

**Philosophy:** Maximize trustworthy coverage by treating every scenario as both a behavioral obligation and an evidence obligation, then add systematic edge, failure, recovery, audit, accessibility, and operational assurance around the source-defined outcomes.

**Optimization objective:** Maximize verified functional, control, operational, and governance coverage while preserving all 39 source scenarios, source priorities, architecture neutrality, and independent release authority.

### Outcome-Oriented Capability Increments

| Element | Capability outcome | Dependencies | Relative scope |
| --- | --- | --- | --- |
| B3-E1 | A complete authority, scope, priority, conflict, acceptance, and decision-evidence baseline governs every scenario and assumption. | None | COMPREHENSIVE |
| B3-E2 | Identity and request authorization are proven for allowed, denied, cross-business-unit, and boundary-failure conditions before retrieval. | B3-E1 | COMPREHENSIVE |
| B3-E3 | Data handling is proven across residency, tenant containment, read-only access modes, credential boundaries, training prohibition, diagnostic minimization, retention, and lineage. | B3-E1, B3-E2 | COMPREHENSIVE |
| B3-E4 | Answers are proven grounded and cited at claim, source-record, provider, and location context, including ambiguity, missing evidence, and freshness limitations. | B3-E2, B3-E3 | COMPREHENSIVE |
| B3-E5 | Safety behavior is proven across prohibited subject matter, coverage determinations, write attempts, routing, audit evidence, and graceful uncertainty. | B3-E1-B3-E3 | COMPREHENSIVE |
| B3-E6 | Service quality is characterized across representative latency, stakeholder reference points, business-hours availability, accessibility, quality feedback, degradation, recovery, and regression conditions. | B3-E3-B3-E5 | COMPREHENSIVE |
| B3-E7 | Security, privacy, responsible AI, threat, misuse, compliance, and independent validation evidence demonstrates control effectiveness and residual risk. | B3-E2-B3-E6 | COMPREHENSIVE |
| B3-E8 | Platform, model, delivery, change, rollback, ATO, release, operational, and long-term audit evidence supports governed authorization and continuous review. | B3-E1; integrates B3-E2-B3-E7 | COMPREHENSIVE |

### Critical Path and Parallelism

**Critical path:** B3-E1 -> B3-E2 -> B3-E3 -> B3-E4 -> B3-E6 -> B3-E7 -> B3-E8. B3-E5 starts once boundary contracts are known and joins B3-E6. Comprehensive assurance is intentionally gated by realistic integrated evidence rather than document completion alone.

| Parallel capability stream | Elements | Start condition |
| --- | --- | --- |
| Authorization and data control | B3-E2, B3-E3 | Baseline B3-E1; B3-E3 integrates B3-E2 |
| Answer correctness and safety | B3-E4, B3-E5 | Boundary contracts available |
| Quality and operational assurance | B3-E6 | Representative integrated behavior available |
| Independent control assurance | B3-E7 | Evidence design after B3-E1; execution integrates B3-E2-B3-E6 |
| Governance and lifecycle evidence | B3-E8 | Starts after B3-E1; closes after all assurance streams |

### Ring 0-5 Mapping

| Ring | Outcome focus | Gate evidence |
| --- | --- | --- |
| Ring 0 | B3-E1 complete scenario, authority, tension, risk, and acceptance baseline | 39/39 scenarios, priorities, conflicts, and architecture-neutral alternatives visible |
| Ring 1 | Comprehensive planning, architecture alternatives, threat/misuse framing, evidence strategy, estimates, and lifecycle acceptance | Human decisions and reviews recorded; authoritative constraints distinguished from choices |
| Ring 2 | Realize B3-E2-B3-E6 with broad positive, negative, boundary, failure, recovery, accessibility, and regression evidence | Public outcomes tested; security/privacy controls and operational signals demonstrable |
| Ring 3 | B3-E7 independent IV&V, security, responsible AI, compliance, performance, availability, retention, accessibility, and audit review | All Must pass; Should targets assessed; Could outcomes explicitly accepted or staged |
| Ring 4 | B3-E8 complete operational readiness, rollback, change, ATO, authorization, support, and evidence-preservation review | Residual risk and every authoritative release condition receive accountable disposition |
| Ring 5 | Governed operation, trend monitoring, audit retrieval, incident learning, quality improvement, and controlled change | Four Golden Signals, safety, citation, freshness, location, access, quality, and retention outcomes remain verifiable |

### Coverage Map

| Element | Requirement tags covered | Treatment |
| --- | --- | --- |
| B3-E1 | All BR, NFR, ARC, DISC, and ELAB tags | Full authority and traceability baseline. |
| B3-E2 | BR-03; DISC-02; ARC-01, ARC-02, ARC-03 | Deep allowed/denied and pre-retrieval boundary assurance. |
| B3-E3 | BR-06; NFR-01, NFR-02; ARC-04, ARC-05, ARC-06, ARC-07, ARC-11 | Data lifecycle, access-mode, containment, diagnostics, and retention assurance. |
| B3-E4 | BR-01, BR-02, BR-08; DISC-01, DISC-04, DISC-05; ARC-13, ARC-14 | Deep claim, record, location, uncertainty, and freshness correctness. |
| B3-E5 | BR-04; DISC-03 | Comprehensive refusal, routing, logging, read-only, and prohibited-subject assurance. |
| B3-E6 | BR-05, BR-07; NFR-03; DISC-06; ELAB-01 | Should metrics characterized broadly; BR-07/DISC-06 remain Could despite fuller treatment. |
| B3-E7 | NFR-04, NFR-05; ARC-06, ARC-07, ARC-12 | Independent security, responsible AI, privacy, and compliance effectiveness. |
| B3-E8 | ARC-08, ARC-09, ARC-10, ARC-12 | Full governance, model-change, rollback, release, and lifecycle evidence. |

| Unnumbered scenario, exact name | Element | Treatment |
| --- | --- | --- |
| Do not write to a system of record | B3-E5 | Positive proof of denied writes and failure-safe behavior. |
| Exclude prohibited subject matter | B3-E5 | Broad prohibited-request and leakage assurance. |
| Enforce contractual release acceptance conditions | B3-E7, B3-E8 | Independent validation and release evidence with accountable residual-risk disposition. |
| Use required delivery governance constraints | B3-E8 | Full evidence under existing controls, without selecting architecture. |
| Keep the first release read only | B3-E5 | End-to-end read-only proof across request and failure conditions. |

### Tradeoffs, Risks, and Deferrals

- **Included:** Every source scenario, extensive positive/negative/boundary/failure/recovery evidence, independent assurance, accessibility, operational readiness, audit retrieval, and controlled-change evidence.
- **Additional coverage beyond core:** Cross-scenario interactions, degradation and recovery, misuse cases, long-retention retrieval confidence, evidence durability, and trend-based operational review. These strengthen assurance but do not become new customer requirements.
- **Deferred:** Only execution timing may be staged. BR-07 and DISC-06 remain Could; Should optimization beyond measured targets may follow first eligibility. Long-horizon trend analysis necessarily matures in Ring 5. No Must requirement or ARC control is deferred beyond its applicable gate.
- **Primary risks:** Scope expansion, slower feedback, higher evidence maintenance cost, and accidental conversion of assurance ideas into unstated requirements.
- **Treatment:** Separate source obligations from assurance depth, maintain priority labels, use explicit entry/exit evidence per ring, and require human disposition for additions or residual risk.
- **Open constraints:** Freshness, benefits routing, refusal evidence interpretation, and governance-system alignment remain explicit decisions; comprehensive analysis does not invent authority.
- **Estimated relative scope:** COMPREHENSIVE.

### Architecture-Neutral Boundary Assessment

**Result: PASS**

- Comprehensive depth is expressed as outcomes and evidence, not a target design.
- No component, deployment topology, database, index, model, runtime, product, staffing, or date is proposed.
- Named ARC standards remain `AUTHORITATIVE CONSTRAINT - not a proposed commitment`.
- Assurance additions are labeled as depth, not promoted customer requirements; BR-07 and DISC-06 remain Could.

---

## Final 39-Scenario Coverage Ledger

| # | Feature | Exact scenario | Tags | B1 elements | B2 elements | B3 elements | Treatment | Tension/omission |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Grounded provider-network answers | Return a grounded answer to an in-scope provider-network question | BR-01, must | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E4, B3-E7 | Must in all strategies | None |
| 2 | Grounded provider-network answers | Cite every factual claim | BR-02, must | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E4, B3-E7 | Must; claim-level source system and record evidence | None |
| 3 | Grounded provider-network answers | Restrict results to the analyst business unit | BR-03, must | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E2, B3-E7 | Must; pre-retrieval boundary reinforced below | None |
| 4 | Grounded provider-network answers | Refuse a coverage-determination question | BR-04, must, negative | B1-E4, B1-E7 | B2-E1, B2-E4, B2-E7 | B3-E1, B3-E5, B3-E7 | Must refusal | Routing detail comes from DISC-03 |
| 5 | Grounded provider-network answers | Meet the response-time objective | BR-05, should, metric | B1-E5, B1-E7 | B2-E1, B2-E5, B2-E7 | B3-E1, B3-E6, B3-E7 | Should; median under 6 seconds measured | Stakeholder references do not replace contractual target |
| 6 | Grounded provider-network answers | Retain query and response records | BR-06, must, audit | B1-E5, B1-E7 | B2-E1, B2-E4, B2-E5, B2-E7 | B3-E1, B3-E3, B3-E7 | Must; seven-year retention | Retention evidence must respect diagnostic payload exclusion |
| 7 | Grounded provider-network answers | Rate answer quality inline | BR-07, could, feedback | B1-E5, B1-E7 | B2-E1, B2-E5, B2-E7 | B3-E1, B3-E6, B3-E7 | Could; retained and stageable | Not promoted to Must |
| 8 | Grounded provider-network answers | State uncertainty when no answer is found | BR-08, must, negative | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E4, B3-E7 | Must; no guessing | Location-specific detail comes from DISC-04 |
| 9 | Grounded provider-network answers | Keep processing in United States regions | NFR-01, must, residency | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E3, B3-E7 | Must boundary | None |
| 10 | Grounded provider-network answers | Keep provider and member data within the UHG tenant | NFR-02, must, tenant-boundary | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E3, B3-E7 | Must boundary | None |
| 11 | Grounded provider-network answers | Meet business-hours availability target | NFR-03, should, availability | B1-E5, B1-E7 | B2-E1, B2-E5, B2-E7 | B3-E1, B3-E6, B3-E7 | Should; 99.5 percent measured | Measurement period requires agreement |
| 12 | Grounded provider-network answers | Require responsible AI assessment before production | NFR-04, must, release-gate | B1-E6, B1-E7 | B2-E1, B2-E6, B2-E7 | B3-E1, B3-E7, B3-E8 | Must release evidence | Does not authorize production |
| 13 | Grounded provider-network answers | Require security review and ATO before go-live | NFR-05, must, release-gate | B1-E6, B1-E7 | B2-E1, B2-E6, B2-E7 | B3-E1, B3-E7, B3-E8 | Must release evidence | Does not claim ATO or go-live |
| 14 | Grounded provider-network answers | Do not write to a system of record | scope, negative | B1-E4, B1-E7 | B2-E1, B2-E4, B2-E7 | B3-E1, B3-E5, B3-E7 | Mandatory scope boundary | None |
| 15 | Grounded provider-network answers | Exclude prohibited subject matter | scope, negative | B1-E4, B1-E7 | B2-E1, B2-E4, B2-E7 | B3-E1, B3-E5, B3-E7 | Mandatory scope boundary | Coverage determinations also trigger refusal/routing |
| 16 | Grounded provider-network answers | Enforce contractual release acceptance conditions | constraint, acceptance | B1-E6, B1-E7 | B2-E1, B2-E6, B2-E7 | B3-E1, B3-E7, B3-E8 | Must validation and release evidence | ATO submission here; acceptance requirement elsewhere is stronger and remains authoritative |
| 17 | Grounded provider-network answers | Use required delivery governance constraints | constraint, governance | B1-E1, B1-E6 | B2-E1, B2-E6 | B3-E1, B3-E8 | Existing controls only | Named standards are AUTHORITATIVE CONSTRAINT - not a proposed commitment |
| 18 | Location-aware and safe provider-network enquiry handling | Answer contract status at the identified location | DISC-01, priority-must | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E4, B3-E7 | Must location-specific behavior | Source-field sufficiency remains to be verified |
| 19 | Location-aware and safe provider-network enquiry handling | Authorize before retrieving business-unit data | DISC-02, priority-must | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E2, B3-E7 | Must query-time authorization | No post-retrieval filtering as control |
| 20 | Location-aware and safe provider-network enquiry handling | Refuse, route, and log a coverage-determination request | DISC-03, priority-must, negative, audit | B1-E4, B1-E7 | B2-E1, B2-E4, B2-E7 | B3-E1, B3-E5, B3-E7 | Must refusal, benefits route, audit evidence | Route ownership and refusal-record interpretation require confirmation |
| 21 | Location-aware and safe provider-network enquiry handling | State record-specific uncertainty without inventing an answer | DISC-04, priority-must, negative | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E4, B3-E7 | Must location/amendment uncertainty | None |
| 22 | Location-aware and safe provider-network enquiry handling | Surface the known amendment freshness limitation | DISC-05, priority-must, freshness | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E4, B3-E7 | Must truthful freshness context | Business expectation versus nightly source mode remains open |
| 23 | Location-aware and safe provider-network enquiry handling | Measure operational response-time expectation | ELAB-01, BR-05, priority-should, metric | B1-E5, B1-E7 | B2-E1, B2-E5, B2-E7 | B3-E1, B3-E6, B3-E7 | Should; report about-5-second and under-10-second references | Contractual median under 6 seconds remains controlling |
| 24 | Location-aware and safe provider-network enquiry handling | Capture detailed optional negative feedback | DISC-06, BR-07, priority-could, feedback | B1-E5, B1-E7 | B2-E1, B2-E5, B2-E7 | B3-E1, B3-E6, B3-E7 | Could and stageable | Not a first-release Must |
| 25 | Location-aware and safe provider-network enquiry handling | Keep the first release read only | scope, read-only, negative | B1-E4, B1-E7 | B2-E1, B2-E4, B2-E7 | B3-E1, B3-E5, B3-E7 | Mandatory first-release boundary | None |
| 26 | UHG platform control boundaries | Accept Microsoft Entra ID only | ARC-01, identity | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E2, B3-E7 | AUTHORITATIVE CONSTRAINT - not a proposed commitment | None |
| 27 | UHG platform control boundaries | Disallow static application credentials | ARC-02, managed-identity, negative | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E2, B3-E3, B3-E7 | Mandatory credential boundary | Named standard is AUTHORITATIVE CONSTRAINT - not a proposed commitment |
| 28 | UHG platform control boundaries | Evaluate authorization before retrieval | ARC-03, authorization | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E2, B3-E7 | Mandatory pre-retrieval control | None |
| 29 | UHG platform control boundaries | Keep processing and storage in United States Azure regions | ARC-04, residency | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E3, B3-E7 | AUTHORITATIVE CONSTRAINT - not a proposed commitment | None |
| 30 | UHG platform control boundaries | Prevent customer data from leaving the tenant | ARC-05, tenant-boundary | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E3, B3-E7 | Mandatory containment | None |
| 31 | UHG platform control boundaries | Prohibit training and fine tuning on customer data | ARC-06, negative, model-governance | B1-E2, B1-E7 | B2-E1, B2-E2, B2-E7 | B3-E1, B3-E3, B3-E7 | Mandatory prohibition | None |
| 32 | UHG platform control boundaries | Exclude provider payloads from diagnostic logging | ARC-07, diagnostics, negative | B1-E2, B1-E5, B1-E7 | B2-E1, B2-E2, B2-E5, B2-E7 | B3-E1, B3-E3, B3-E7 | Mandatory diagnostic minimization | Must coexist with seven-year interaction retention |
| 33 | UHG platform control boundaries | Use the approved platform service for each capability | ARC-08, approved-services | B1-E1, B1-E6, B1-E7 | B2-E1, B2-E6, B2-E7 | B3-E1, B3-E8 | AUTHORITATIVE CONSTRAINT - not a proposed commitment; one outline covering six examples | No product choice added |
| 34 | UHG platform control boundaries | Restrict model use to the approved allowlist | ARC-09, model-governance | B1-E1, B1-E6, B1-E7 | B2-E1, B2-E6, B2-E7 | B3-E1, B3-E8 | Mandatory model governance | No model selected |
| 35 | UHG platform control boundaries | Govern a model version change | ARC-10, change-control | B1-E1, B1-E6, B1-E7 | B2-E1, B2-E6, B2-E7 | B3-E1, B3-E8 | Mandatory approval and baseline | No version or change proposed |
| 36 | UHG platform control boundaries | Access all approved data sources using their defined modes | ARC-11, data-sources | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E3, B3-E7 | AUTHORITATIVE CONSTRAINT - not a proposed commitment | Nightly amendment mode drives freshness tension |
| 37 | UHG platform control boundaries | Enforce all production release gates | ARC-12, release-gate | B1-E6, B1-E7 | B2-E1, B2-E6, B2-E7 | B3-E1, B3-E7, B3-E8 | Mandatory complete release evidence | No gate pass or deployment claim |
| 38 | UHG platform control boundaries | Do not claim intra-day amendment freshness | ARC-13, risk, freshness | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E4, B3-E7 | Mandatory truthful limitation | Directly constrains DISC-05 treatment |
| 39 | UHG platform control boundaries | Guard against location-level misinterpretation | ARC-14, risk, location | B1-E3, B1-E7 | B2-E1, B2-E3, B2-E7 | B3-E1, B3-E4, B3-E7 | Mandatory location context | Directly reinforces DISC-01 |

## Coverage Attestation

**Scenario coverage:** 39/39 in B1, 39/39 in B2, and 39/39 in B3.

**Tag coverage:** BR-01 through BR-08; NFR-01 through NFR-05; ARC-01 through ARC-14; DISC-01 through DISC-06; ELAB-01; and all five unnumbered scope/acceptance/governance scenarios are mapped in every strategy.

**Priority integrity:** No Must BR/NFR/ARC/DISC requirement is omitted. BR-05, NFR-03, and ELAB-01 remain Should. BR-07 and DISC-06 remain Could. Requirements are staged only where their source priority and applicable ring gate permit; none are discarded.

**Known tensions, not omissions:** Amendment freshness versus nightly source availability; benefits-team routing authority and refusal-evidence interpretation; measurement-period definition; and governance-system alignment remain explicit matters for accountable human disposition. They do not reduce scenario coverage.

**Task trace:** AGENT_TASK_START and AGENT_TASK_END are represented by this single bounded artifact because the independent brainstorm instruction permits exactly one file and forbids edits to the workspace journal or trace index. Outcome: completed; artifact produced: `docs/Planning/brainstorm/model-B-decomposition.md`.