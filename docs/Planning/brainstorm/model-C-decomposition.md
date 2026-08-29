# Model C Decomposition — Obligation-Taxonomy Stance

**Objective:** Deliver the UHG Provider Network Intelligence Agent covering all 39 scenarios within authoritative ARC constraints.
**Model:** Replacement Model C (breadth-by-control-family taxonomy; independent of other model files)
**Date:** 2026-08-28
**Stance:** Classify every scenario as a *control obligation family* (authority, access, answer integrity, prohibition, containment, source honesty, retention, release evidence, performance, feedback). Strategies differ only in how families are collapsed, sequenced, or evidenced — never by selecting implementation mechanisms.
**Scope of this artifact:** Phase 1 strategic decomposition only. Not a WBS. No Phase 2. No Ring 1 start.

**Named-control handling rule used throughout:** Any named identity, region, delivery system, allowlist, or approved-capability standard is restated only as `AUTHORITATIVE CONSTRAINT — not a proposed commitment`.

---

## Strategy C1: Least Cost

**Philosophy:** Pay once per obligation family. Collapse the 39 scenarios into the fewest outcome packages that still carry every Must, every source-timed governance/quality gate, and an explicit later home for every Should/Could. Cost falls by avoiding duplicate evidence work and by not staffing optional feedback or extra-contractual polish as first-release Must work — not by dropping controls.

### Authoritative named-control restatement (not a design choice)

`AUTHORITATIVE CONSTRAINT — not a proposed commitment`

- Identity: Microsoft Entra ID is the only accepted identity provider (ARC-01). Application access uses managed identity; stored secrets and static bearer tokens are not permitted in application configuration (ARC-02).
- Residency/tenant: processing and storage remain in United States Azure regions (ARC-04) and provider/member data remains within the UHG tenant boundary (ARC-05).
- Approved capability standards (ARC-08 Scenario Outline, one scenario): Agent hosting = Microsoft Foundry hosted agents; Secrets = Azure Key Vault with managed identity; Observability = Azure Monitor and Application Insights; Infrastructure as code = Bicep through Azure DevOps pipelines; Work tracking = Azure DevOps Boards; Source control = Azure DevOps Repos.
- Model governance: use is limited to the UHG AI allowlist (ARC-09); a model version change requires change advisory board approval and a documented evaluation baseline (ARC-10).
- Delivery/release: work tracking uses Azure DevOps; production deployment requires change advisory board approval (SOW governance scenario). Production authorization requires security review sign-off, responsible AI assessment sign-off, ATO package submitted and accepted, change advisory board approval, and a documented rollback plan (ARC-12). Engagement acceptance requires all Must requirements independently validated, responsible AI assessment signed, and ATO package submitted (SOW acceptance scenario).

### Outcome-oriented capability / work packages

| # | Package | Outcome obligation (what must be true) | Dependencies | Effort |
| --- | --- | --- | --- | --- |
| C1-LOCK | Authority freeze | Contractual Must/Should/Could remain as sourced. DISC items stay newly discovered (not silent SOW amendments). Open questions OQ-01 freshness, OQ-02 refusal destination, OQ-03 work-tracking system alignment are recorded without dropping any Must. | None | LOW |
| C1-ANS | Answer-integrity family | In-scope questions receive grounded answers; every factual claim identifies source system and source record; no guess when unsupported; location-level contract context is preserved and identified; missing amendment evidence is stated for that location. Covers BR-01, BR-02, BR-08, DISC-01, DISC-04, ARC-14. | C1-LOCK, C1-AUTH, C1-SRC | MEDIUM |
| C1-AUTH | Access-before-retrieval family | Authenticated analysts are confined to authorized business-unit results; authorization is evaluated for the request before retrieval; unauthorized business-unit records are not retrieved for later narrowing. Covers BR-03, DISC-02, ARC-01, ARC-02, ARC-03. | C1-LOCK | MEDIUM |
| C1-PROH | Prohibition and handoff family | Coverage-determination and other prohibited subjects are refused; no writes to systems of record; member/patient clinical data, claims adjudication, and coverage determinations are not answered; refused coverage requests are handed to the benefits team and the refusal interaction is retained. Covers BR-04, DISC-03, both SOW unnumbered scope scenarios, transcript read-only scenario. | C1-LOCK, C1-RET | MEDIUM |
| C1-BND | Containment family | Processing/storage remain in United States regions/US Azure regions; provider and member data do not leave the UHG tenant; customer data is not used for training or fine tuning; provider-data payloads are excluded from diagnostic logging. Covers NFR-01, NFR-02, ARC-04, ARC-05, ARC-06, ARC-07. | C1-LOCK | MEDIUM |
| C1-SRC | Source-mode and freshness-honesty family | Contracting, credentialing, and provider-directory information are accessed only through their defined read-only API modes; amendment information is accessed only through the nightly export mode; answers never claim intra-day amendment reflection; available amendment information is presented with applicable freshness context, including the business expectation that yesterday’s completed export cycle is visible. Covers ARC-11, ARC-13, DISC-05. | C1-LOCK (OQ-01 interpretation freeze) | MEDIUM |
| C1-RET | Retention family | Every completed query/response is retained for audit for 7 years; refusal interactions required by DISC-03 share this same retention obligation. Covers BR-06 and the audit half of DISC-03. | C1-LOCK | LOW |
| C1-REL | Gate and delivery-governance family | Responsible AI assessment before production; security review and ATO before go-live; all ARC-12 production gates; SOW acceptance conditions; SOW delivery governance; ARC-08/09/10 restated constraints remain binding. No first-release authorization without these. Covers NFR-04, NFR-05, ARC-08, ARC-09, ARC-10, ARC-12, SOW acceptance, SOW governance. | C1-ANS, C1-AUTH, C1-PROH, C1-BND, C1-SRC, C1-RET | HIGH |
| C1-PERF | Performance/availability family (Should) | Median response under 6 seconds (BR-05) and 99.5 percent business-hours availability (NFR-03) remain in scope; stakeholder 5s/~10s reference points (ELAB-01) are measured later against the contractual median, not substituted for it. | C1-ANS | LOW |
| C1-FBK | Quality-feedback family (Could) | Inline rating (BR-07) and optional negative rating-with-comment (DISC-06) remain Could; not first-release Must; not dropped. | C1-ANS | LOW |

### Dependencies (family graph)

- C1-LOCK precedes all realization.
- C1-AUTH precedes C1-ANS (no grounded answer may be produced outside authorized business-unit scope).
- C1-SRC precedes location/amendment honesty inside C1-ANS.
- C1-RET is available before C1-PROH completes refusal-evidence obligations.
- C1-REL cannot finish before Must families are independently validatable.
- C1-PERF and C1-FBK do not gate Must completion; they remain scheduled later.

### Ring 0–5 mapping

| Ring | Deliverables (outcomes/controls only) | Gate criteria |
| --- | --- | --- |
| Ring 0 | Authority freeze; 39-scenario coverage ledger; DISC labeled newly discovered; OQ-01/02/03 captured; this decomposition | Human accepts Phase 1 strategy later; no architecture commitment; no Ring 1 start from this file |
| Ring 1 | Outcome-package plan, estimates, and governance-system alignment question (OQ-03) | Human approval of plan; work-tracking obligation remains the SOW/ARC Azure DevOps constraint when delivery work is tracked |
| Ring 2 | Realization of Must families C1-ANS, C1-AUTH, C1-PROH, C1-BND, C1-SRC, C1-RET | Must behaviors demonstrable; allowlist constraint already applied before any model is proposed for use |
| Ring 3 | Independent validation of all Must requirements | All Must pass independent validation (SOW acceptance); workspace accessibility expectations checked for any user-facing enquiry surface without treating them as SOW contract |
| Ring 4 | Responsible AI assessment completed/signed; security review evidence assembled | NFR-04 and the RAI portion of ARC-12/acceptance satisfied before production is proposed |
| Ring 5 | ATO package submitted (and accepted for ARC-12); change advisory board approval; documented rollback plan exists; 7-year retention clock operates; Should metrics collected in operations | NFR-05, ARC-12, SOW governance/acceptance; no go-live without them |

### Trade-offs

- **What's included:** Every Must (SOW, ARC, DISC Must, unnumbered prohibition/read-only/acceptance/governance scenarios). Source-timed gates stay on their source rings.
- **What's deferred or excluded:** BR-05, NFR-03, ELAB-01 deferred-not-dropped from first usable Must-complete delivery. BR-07 and DISC-06 remain Could and deferred-not-dropped. No extra-contractual analytics program. Handling-time/repeat-enquiry baselines (M-03/M-04) are observed later, not staffed as a separate first-release family.
- **Risks of this approach:** Collapsing DISC-03 into C1-PROH+C1-RET may under-specify benefits-team destination ownership (OQ-02). Collapsing freshness into one honesty family still requires an OQ-01 business freeze or analysts may distrust location answers. Lean evidence may be challenged at Ring 3 if family-level tests are too coarse.
- **Estimated relative effort:** LOW–MEDIUM overall (HIGH concentrated in C1-REL evidence, which cannot be skipped).

### Risk / constraint treatment

| Item | Treatment in C1 |
| --- | --- |
| C-01 read-only | Must in C1-PROH; never deferred |
| C-02 prohibited subjects | Must in C1-PROH; never deferred |
| C-03 identity | Restated ARC-01/ARC-02 only; not a product selection |
| C-04 pre-retrieval authorization | Must in C1-AUTH; post-retrieval narrowing is not an acceptable control (`AUTHORITATIVE CONSTRAINT — not a proposed commitment`) |
| C-05 US/tenant/no training/no provider payloads in diagnostics | Must in C1-BND |
| C-06 approved services, Azure DevOps, allowlist, CAB | Must in C1-REL at source-defined moments |
| C-07 four access modes | Must in C1-SRC |
| C-08 production gates | Must in C1-REL Rings 4–5 |
| OQ-01 freshness conflict | Interpret “yesterday reflected” as last completed nightly export plus explicit freshness context; never claim intra-day; business freeze in Ring 0; DISC-05 and ARC-13 both remain Must |
| OQ-02 benefits-team destination | Keep DISC-03 Must; confirm owner in Ring 0; do not drop routing outcome |
| OQ-03 GitHub vs Azure DevOps | Do not drop the Azure DevOps work-tracking constraint; record alignment as Ring 1 planning question |

### Deferred-not-dropped items

- BR-05 median under 6 seconds — Should; after Must-complete delivery; still in ledger.
- NFR-03 99.5 percent business-hours availability — Should; operations measurement after go-live authorization work is otherwise ready; still in ledger.
- ELAB-01 5s/~10s reference points — Should elaboration; measured against BR-05, not a replacement target.
- BR-07 inline rating — Could.
- DISC-06 negative rating with comment — Could; not promoted.
- M-03/M-04 operational baselines — outcome tracking after answers exist; not dropped from program memory.
- Workspace accessibility expectations — non-SOW; still a Ring 3 user-facing gate hygiene item, not removed.

### Full tag coverage map (C1)

| Tags | Package | Treatment |
| --- | --- | --- |
| @sow @BR-01 @must | C1-ANS | Must in every strategy |
| @sow @BR-02 @must | C1-ANS | Must in every strategy |
| @sow @BR-03 @must | C1-AUTH | Must in every strategy |
| @sow @BR-04 @must @negative | C1-PROH | Must in every strategy |
| @sow @BR-05 @should @metric | C1-PERF | Should, deferred-not-dropped |
| @sow @BR-06 @must @audit | C1-RET | Must in every strategy |
| @sow @BR-07 @could @feedback | C1-FBK | Could, deferred-not-dropped |
| @sow @BR-08 @must @negative | C1-ANS | Must in every strategy |
| @sow @NFR-01 @must @residency | C1-BND | Must in every strategy |
| @sow @NFR-02 @must @tenant-boundary | C1-BND | Must in every strategy |
| @sow @NFR-03 @should @availability | C1-PERF | Should, deferred-not-dropped |
| @sow @NFR-04 @must @release-gate | C1-REL | Must; before production (Ring 4) |
| @sow @NFR-05 @must @release-gate | C1-REL | Must; before go-live (Ring 5) |
| @sow @scope @negative (write; prohibited subjects) | C1-PROH | Must in every strategy |
| @sow @constraint @acceptance | C1-REL | Must; Ring 3–5 evidence |
| @sow @constraint @governance | C1-REL | Must; when work is tracked / production proposed |
| @platform @ARC-01 @identity | C1-AUTH | Must; authoritative restatement |
| @platform @ARC-02 @managed-identity @negative | C1-AUTH | Must; authoritative restatement |
| @platform @ARC-03 @authorization | C1-AUTH | Must in every strategy |
| @platform @ARC-04 @residency | C1-BND | Must; authoritative restatement |
| @platform @ARC-05 @tenant-boundary | C1-BND | Must in every strategy |
| @platform @ARC-06 @negative @model-governance | C1-BND | Must in every strategy |
| @platform @ARC-07 @diagnostics @negative | C1-BND | Must in every strategy |
| @platform @ARC-08 @approved-services | C1-REL | Must; one Scenario Outline; authoritative restatement only |
| @platform @ARC-09 @model-governance | C1-REL | Must; before any model is proposed for use |
| @platform @ARC-10 @change-control | C1-REL | Must; before any model version change |
| @platform @ARC-11 @data-sources | C1-SRC | Must in every strategy |
| @platform @ARC-12 @release-gate | C1-REL | Must; production window (Ring 5) |
| @platform @ARC-13 @risk @freshness | C1-SRC | Must in every strategy |
| @platform @ARC-14 @risk @location | C1-ANS | Must in every strategy |
| @transcript @DISC-01 @priority-must | C1-ANS | Discovery Must; in every strategy |
| @transcript @DISC-02 @priority-must | C1-AUTH | Discovery Must; in every strategy |
| @transcript @DISC-03 @priority-must @negative @audit | C1-PROH + C1-RET | Discovery Must; in every strategy |
| @transcript @DISC-04 @priority-must @negative | C1-ANS | Discovery Must; in every strategy |
| @transcript @DISC-05 @priority-must @freshness | C1-SRC | Discovery Must; in every strategy |
| @transcript @ELAB-01 @BR-05 @priority-should @metric | C1-PERF | Should elaboration; deferred-not-dropped |
| @transcript @DISC-06 @BR-07 @priority-could @feedback | C1-FBK | Could; deferred-not-dropped |
| @transcript @scope @read-only @negative | C1-PROH | Must in every strategy |

**Architecture-Neutral Boundary Assessment — PASS**

No implementation mechanism, topology, or non-ARC product selection is proposed. Named platform standards appear only as labeled authoritative restatements. Packages describe outcomes and control obligations only.

---

## Strategy C2: Shortest Time to Deliver

**Philosophy:** Time is elapsed gate-time, not package count. After one authority freeze, run independent obligation families in parallel. Put only true serial controls on the critical path: freshness interpretation (OQ-01), refusal-destination confirmation (OQ-02), Must realization, independent validation, then RAI → security/ATO/CAB. Should measurement may run beside Must work but must not block the first Must-complete usable delivery. Could stays after that delivery.

### Authoritative named-control restatement (not a design choice)

`AUTHORITATIVE CONSTRAINT — not a proposed commitment`

Same binding restatement as C1 for ARC-01, ARC-02, ARC-04, ARC-05, ARC-08 (one Scenario Outline with the six mandated capability/standard pairs), ARC-09, ARC-10, ARC-12, and the SOW Azure DevOps / change advisory board / allowlist governance scenario. Speed does not authorize substituting another identity authority, another region set, another work-tracking system, or another release-gate order.

### Outcome-oriented capability / work packages

| # | Package | Outcome obligation (what must be true) | Dependencies | Timeline |
| --- | --- | --- | --- | --- |
| C2-LOCK | Same-week authority freeze | Freeze Must/Should/Could, DISC discovery labeling, OQ-01 interpretation (last completed nightly export + no intra-day claim), OQ-02 benefits-team destination confirmation path, OQ-03 work-tracking alignment question. | None | SHORT |
| C2-AUTH | Access stream | BR-03, DISC-02, ARC-01, ARC-02, ARC-03 outcomes true for every request before retrieval. | C2-LOCK | MEDIUM |
| C2-BND | Containment stream | NFR-01, NFR-02, ARC-04, ARC-05, ARC-06, ARC-07 outcomes true whenever data is processed. | C2-LOCK | MEDIUM |
| C2-SRC | Source/freshness stream | ARC-11 modes, ARC-13 non-claim, DISC-05 freshness context. | C2-LOCK (OQ-01) | MEDIUM |
| C2-ANS | Answer-integrity stream | BR-01, BR-02, BR-08, DISC-01, DISC-04, ARC-14. | C2-AUTH, C2-SRC | MEDIUM |
| C2-RET | Retention stream | BR-06 seven-year query/response retention. | C2-LOCK | SHORT |
| C2-PROH | Prohibition/handoff stream | BR-04 refuse coverage determination; unnumbered prohibited-subject and no-write scenarios; transcript read-only; DISC-03 benefits-team handoff plus refusal audit using C2-RET. | C2-LOCK, C2-RET; OQ-02 confirmation | MEDIUM |
| C2-REL | Gate stream (starts early, finishes last) | Allowlist check from the first moment a model is proposed; RAI before production; security review and ATO before go-live; ARC-12 full set; SOW acceptance and governance. | Must streams complete for IV&V; then Ring 4–5 serial gates | LONG |
| C2-PERF | Should measurement stream | BR-05, NFR-03, ELAB-01 measured in parallel with or immediately after Must-complete delivery; not a Must blocker. | C2-ANS (for representative questions) | SHORT |
| C2-FBK | Could after first usable delivery | BR-07, DISC-06 remain Could. | First Must-complete usable delivery | SHORT |

### Parallel streams

| Stream | Packages | Can start immediately? |
| --- | --- | --- |
| Authority | C2-LOCK | Yes |
| Access | C2-AUTH | After C2-LOCK |
| Containment | C2-BND | After C2-LOCK |
| Source honesty | C2-SRC | After C2-LOCK (blocked only by OQ-01 freeze, not by answer wording) |
| Retention | C2-RET | After C2-LOCK |
| Answer integrity | C2-ANS | After C2-AUTH and C2-SRC |
| Prohibition | C2-PROH | After C2-LOCK and C2-RET; destination confirmation can overlap |
| Gate evidence | C2-REL | Evidence collection after C2-LOCK; authorization acts remain Ring 4–5 |
| Should metrics | C2-PERF | After representative in-scope questions exist; parallel to late Ring 2/3 |
| Could feedback | C2-FBK | After first Must-complete usable delivery |

**Critical path:** C2-LOCK (OQ-01/OQ-02) → C2-AUTH + C2-SRC → C2-ANS → Ring 3 Must IV&V → C2-REL (RAI) → C2-REL (security review/ATO/CAB/rollback-plan existence). C2-BND, C2-RET, C2-PROH overlap the path; C2-PERF/C2-FBK do not lengthen it.

### Ring 0–5 mapping

| Ring | Deliverables | Gate criteria |
| --- | --- | --- |
| Ring 0 | Rapid authority freeze; OQ-01/OQ-02 decisions or time-boxed confirmation owners; coverage ledger | Freeze complete; no mechanism selection; no Ring 1 start from this file |
| Ring 1 | Compressed outcome plan with parallel streams; OQ-03 recorded | Human plan approval; Azure DevOps work-tracking constraint remains when delivery tracking begins |
| Ring 2 | Parallel Must streams to first Must-complete usable delivery | All Must behaviors demonstrable; allowlist already applied |
| Ring 3 | Independent validation focused on Musts; Should metrics may still be in progress | All Must independently validated; Should not used to fail a Must-only timebox |
| Ring 4 | RAI completed before production is proposed | NFR-04; RAI sign-off in ARC-12/acceptance |
| Ring 5 | Security review, ATO submit/accept, CAB, rollback-plan existence; retention operating | NFR-05; ARC-12; SOW governance/acceptance; no skipped gate for speed |

### Trade-offs

- **What's included:** Every Must on the first usable delivery. Governance/quality gates remain at source-defined rings. Parallel families reduce elapsed time.
- **What's deferred for speed:** BR-05, NFR-03, ELAB-01 may finish after first Must-complete delivery (deferred-not-dropped). BR-07, DISC-06 after that (Could). Deep edge-case catalogs and extra audit narratives wait for later increments.
- **Risks of this approach:** Parallel streams can drift on location wording vs freshness wording unless C2-LOCK is real. Fast IV&V may miss location-misinterpretation (ARC-14/DISC-01) if scenarios are sampled too thinly. OQ-02 confirmation delay can stall C2-PROH even if refusal itself is ready.
- **Estimated relative timeline:** SHORT to first Must-complete usable delivery; LONG still required for Ring 4–5 gates (cannot be shortened by omitting them).

### Risk / constraint treatment

| Item | Treatment in C2 |
| --- | --- |
| All Musts | On or overlapping the critical path; none deferred |
| Should metrics | Parallel; non-blocking; not dropped |
| Could feedback | After first usable delivery; not dropped; not promoted |
| OQ-01 | Time-boxed Ring 0 freeze: last completed nightly export + freshness context + ARC-13 non-claim; DISC-05 remains Must |
| OQ-02 | Confirm benefits-team destination in parallel with refusal behavior; DISC-03 remains Must |
| OQ-03 | Do not wait to invent a new tracking system; keep mandated Azure DevOps obligation; alignment is a planning question |
| ARC-08 | One scenario; restated, not re-selected under time pressure |
| Release gates | Serial after IV&V; speed is parallelism before gates, not gate-skipping |

### Deferred-not-dropped items

- BR-05, NFR-03, ELAB-01 — Should; may trail first Must-complete delivery.
- BR-07, DISC-06 — Could; trail first Must-complete delivery.
- Expanded negative-path catalogues beyond sourced scenarios — later, not dropped from comprehensive backlog memory.
- M-03/M-04 handling-time/repeat-enquiry outcome tracking — after answers exist.
- Non-SOW accessibility hygiene — still Ring 3 for user-facing surfaces; not used as a speed-cut.

### Full tag coverage map (C2)

| Tags | Package | Treatment |
| --- | --- | --- |
| @BR-01 @must | C2-ANS | Must; critical path |
| @BR-02 @must | C2-ANS | Must; critical path |
| @BR-03 @must | C2-AUTH | Must; parallel, precedes answers |
| @BR-04 @must @negative | C2-PROH | Must; overlapping path |
| @BR-05 @should @metric | C2-PERF | Should; parallel, non-blocking |
| @BR-06 @must @audit | C2-RET | Must; parallel |
| @BR-07 @could @feedback | C2-FBK | Could; after first usable delivery |
| @BR-08 @must @negative | C2-ANS | Must; critical path |
| @NFR-01 @must @residency | C2-BND | Must; parallel |
| @NFR-02 @must @tenant-boundary | C2-BND | Must; parallel |
| @NFR-03 @should @availability | C2-PERF | Should; parallel, non-blocking |
| @NFR-04 @must @release-gate | C2-REL | Must; Ring 4, not advanced earlier than source |
| @NFR-05 @must @release-gate | C2-REL | Must; Ring 5, not skipped for speed |
| @scope @negative (SOW write; SOW prohibited subjects) | C2-PROH | Must |
| @constraint @acceptance | C2-REL | Must; after Ring 3 Must IV&V |
| @constraint @governance | C2-REL | Must; source-timed |
| @ARC-01 @identity | C2-AUTH | Must; restatement |
| @ARC-02 @managed-identity @negative | C2-AUTH | Must; restatement |
| @ARC-03 @authorization | C2-AUTH | Must |
| @ARC-04 @residency | C2-BND | Must; restatement |
| @ARC-05 @tenant-boundary | C2-BND | Must |
| @ARC-06 @negative @model-governance | C2-BND | Must |
| @ARC-07 @diagnostics @negative | C2-BND | Must |
| @ARC-08 @approved-services | C2-REL | Must; one outline; restatement |
| @ARC-09 @model-governance | C2-REL | Must; before model use is proposed |
| @ARC-10 @change-control | C2-REL | Must; before version change |
| @ARC-11 @data-sources | C2-SRC | Must; critical path feeder |
| @ARC-12 @release-gate | C2-REL | Must; Ring 5 |
| @ARC-13 @risk @freshness | C2-SRC | Must; critical path feeder |
| @ARC-14 @risk @location | C2-ANS | Must; critical path |
| @DISC-01 @priority-must | C2-ANS | Discovery Must |
| @DISC-02 @priority-must | C2-AUTH | Discovery Must |
| @DISC-03 @priority-must @negative @audit | C2-PROH | Discovery Must |
| @DISC-04 @priority-must @negative | C2-ANS | Discovery Must |
| @DISC-05 @priority-must @freshness | C2-SRC | Discovery Must |
| @ELAB-01 @BR-05 @priority-should @metric | C2-PERF | Should; non-blocking |
| @DISC-06 @BR-07 @priority-could @feedback | C2-FBK | Could |
| @scope @read-only @negative | C2-PROH | Must |
| Feature tags @sow @platform @transcript | inherit with their scenarios | Covered; none omitted |

**Architecture-Neutral Boundary Assessment — PASS**

Parallelism is a sequencing choice among obligation families, not a selected interconnection pattern. No extra intermediaries or product substitutions are introduced to go faster. Named standards remain labeled authoritative constraints.

---

## Strategy C3: Most Comprehensive Scope

**Philosophy:** Do not collapse families. Keep each sourced obligation separately evidencable, add independent validation depth and edge-case honesty, and staff Should metrics as first-release quality rather than a trailing afterthought. Could remains Could (BR-07, DISC-06) but is fully specified so it cannot be lost. Completeness is evidence completeness and conflict closure — not new mechanisms.

### Authoritative named-control restatement (not a design choice)

`AUTHORITATIVE CONSTRAINT — not a proposed commitment`

Identical binding restatement as C1/C2 for ARC-01, ARC-02, ARC-04, ARC-05, ARC-08 (single Scenario Outline; six mandated pairs), ARC-09, ARC-10, ARC-12, and SOW Azure DevOps / change advisory board / allowlist governance. Comprehensive scope does not add alternate standards or extra named products.

### Outcome-oriented capability / work packages

| # | Package | Outcome obligation (what must be true) | Dependencies | Scope |
| --- | --- | --- | --- | --- |
| C3-LOCK | Dual-authority corpus control | SOW remains contractual authority; each DISC remains newly discovered with platform corroboration recorded where present; ELAB-01 remains an elaboration of BR-05; OQ-01/02/03 closed with written business dispositions before Ring 1 planning is treated as complete. | None | COMPREHENSIVE |
| C3-AUTH | Identity and pre-retrieval authorization, separately evidenced | ARC-01, ARC-02, ARC-03, BR-03, DISC-02 each have distinct proof that authorization happens before retrieval and that identity authority is solely the mandated one. | C3-LOCK | COMPREHENSIVE |
| C3-ANS | Grounded, cited, location-explicit answers | BR-01, BR-02, ARC-14, DISC-01 evidenced at multi-location providers; group status is never applied to every location. | C3-AUTH, C3-SRC | COMPREHENSIVE |
| C3-UNCERT | Unsupported-answer honesty | BR-08 general uncertainty and DISC-04 location/amendment-specific non-invention are separately evidenced. | C3-ANS, C3-SRC | MODERATE |
| C3-PROH | Prohibition set | BR-04; SOW excluded subjects; SOW no-write; transcript read-only — each scenario kept distinct so a pass on one cannot stand for another. | C3-LOCK | COMPREHENSIVE |
| C3-HAND | Refusal destination and refusal audit | DISC-03 benefits-team handoff and refusal-interaction retention, with OQ-02 disposition recorded. | C3-PROH, C3-RET | MODERATE |
| C3-BND | Containment set | NFR-01, NFR-02, ARC-04, ARC-05, ARC-06, ARC-07 each independently evidenced. | C3-LOCK | COMPREHENSIVE |
| C3-SRC | Four access modes | ARC-11 four modes evidenced separately (three read-only API modes; one nightly export mode). | C3-LOCK | COMPREHENSIVE |
| C3-FRESH | Freshness honesty pair | ARC-13 non-claim and DISC-05 freshness context both evidenced; OQ-01 business agreement attached. | C3-SRC | COMPREHENSIVE |
| C3-RET | Seven-year interaction retention | BR-06 duration and completeness for questions and responses, including refused interactions. | C3-LOCK | MODERATE |
| C3-PERF | First-release Should performance/availability | BR-05 median under 6 seconds and NFR-03 99.5 percent business-hours availability are in the first-release quality bar; ELAB-01 5s/~10s reference points are reported alongside, never replacing BR-05. | C3-ANS | COMPREHENSIVE |
| C3-FBK | Specified Could feedback | BR-07 inline rating and DISC-06 optional comment-on-negative fully specified as Could; implementation may follow Must+Should evidence but the specification is not deferred into oblivion. | C3-ANS | NARROW (priority remains Could) |
| C3-REL | Full gate and delivery evidence | NFR-04, NFR-05, ARC-08, ARC-09, ARC-10, ARC-12, SOW acceptance, SOW governance — each control has its own evidence object timed to its source gate. | All Must packages | COMPREHENSIVE |
| C3-IVV | Independent validation program | Ring 3 validates every Must scenario (17 SOW + 14 platform + discovery Musts + unnumbered Must-equivalent scope/governance/acceptance) without combining rows. | Realization of Must packages | COMPREHENSIVE |
| C3-OPS | Outcome baselines (non-blocking extras) | M-03 handling-time and M-04 repeat-enquiry baselines are observed after grounded answers exist; G-01/G-02 success criteria tracked. Not used to invent new product scope. | C3-ANS | MODERATE |

### Ring 0–5 mapping

| Ring | Deliverables | Gate criteria |
| --- | --- | --- |
| Ring 0 | Full corpus control; OQ dispositions drafted for human close; 39-row coverage; DISC/ELAB labeling intact | Human later selects strategy; no architecture commitment; no Ring 1 start from this file |
| Ring 1 | Uncollapsed outcome plan, cost/schedule/token baseline inputs, decision trace for OQ closures | Human approval; Azure DevOps tracking constraint when delivery work is tracked |
| Ring 2 | Realization of all Must families plus Should performance/availability as first-release quality | Distinct evidence per Must scenario; allowlist/version-change controls applied when relevant |
| Ring 3 | C3-IVV against all Musts; accessibility hygiene for user-facing enquiry surfaces (workspace policy, not SOW) | All Must independently validated; unresolved Sev 1/2 accessibility findings handled per workspace gates |
| Ring 4 | RAI assessment signed; security-review package complete | NFR-04; RAI portion of ARC-12/acceptance |
| Ring 5 | ATO submitted and accepted; CAB approval; rollback-plan existence; availability measurement period begins; 7-year retention operates | NFR-05; ARC-12; SOW acceptance/governance |

### Trade-offs

- **What's included:** Every sourced scenario with separate evidence; Should metrics in first-release quality; Could fully specified; OQ closures; IV&V program; operational baseline observation.
- **Additional coverage beyond core:** Separate uncertainty vs location-missing-amendment evidence; separate prohibition vs handoff; four ARC-11 modes tested apart; freshness pair tested apart; workspace accessibility hygiene called out as non-contractual.
- **What's still not promoted:** BR-07 and DISC-06 remain Could, not first-release Must.
- **Risks of this approach:** Higher effort and longer elapsed time; risk of treating discovery Musts as if they amended the SOW (mitigate by keeping DISC labels); risk of smuggling mechanism choices while “adding completeness” (forbidden; this strategy adds evidence, not components).
- **Estimated relative scope:** COMPREHENSIVE.

### Risk / constraint treatment

| Item | Treatment in C3 |
| --- | --- |
| All Musts | Independently evidenced; none deferred |
| Should | Inside first-release quality bar; not deferred past Ring 3–5 measurement design |
| Could | Specified now; optional realization after Must+Should; not dropped; not promoted |
| OQ-01 | Written business agreement required: nightly export mode vs “yesterday reflected”; both DISC-05 and ARC-13 remain Must |
| OQ-02 | Written destination-owner agreement; DISC-03 remains Must |
| OQ-03 | Written governance-system alignment; Azure DevOps obligation not replaced |
| Location misinterpretation (known risk) | ARC-14 and DISC-01 separately evidenced |
| Intra-day limitation (known risk) | ARC-13 and DISC-05 separately evidenced |
| Governance/quality gates | Never later than source-defined rings |

### Deferred-not-dropped items

- BR-07, DISC-06 realization may follow Must+Should evidence — Could priority preserved, specification not dropped.
- No sourced Must is deferred.
- No source-timed gate is moved later than its defining scenario.
- Extra-contractual product ideas remain out of scope (not deferred work; never in the 39).

### Full tag coverage map (C3)

| Tags | Package | Treatment |
| --- | --- | --- |
| @sow @BR-01 @must | C3-ANS | Must; independently evidenced |
| @sow @BR-02 @must | C3-ANS | Must; independently evidenced |
| @sow @BR-03 @must | C3-AUTH | Must; independently evidenced |
| @sow @BR-04 @must @negative | C3-PROH | Must; independently evidenced |
| @sow @BR-05 @should @metric | C3-PERF | Should; first-release quality |
| @sow @BR-06 @must @audit | C3-RET | Must; independently evidenced |
| @sow @BR-07 @could @feedback | C3-FBK | Could; specified, not promoted |
| @sow @BR-08 @must @negative | C3-UNCERT | Must; independently evidenced |
| @sow @NFR-01 @must @residency | C3-BND | Must; independently evidenced |
| @sow @NFR-02 @must @tenant-boundary | C3-BND | Must; independently evidenced |
| @sow @NFR-03 @should @availability | C3-PERF | Should; first-release quality |
| @sow @NFR-04 @must @release-gate | C3-REL | Must; Ring 4 |
| @sow @NFR-05 @must @release-gate | C3-REL | Must; Ring 5 |
| @sow @scope @negative (unnumbered write) | C3-PROH | Must; independently evidenced |
| @sow @scope @negative (unnumbered prohibited subjects) | C3-PROH | Must; independently evidenced |
| @sow @constraint @acceptance | C3-REL + C3-IVV | Must; Ring 3–5 |
| @sow @constraint @governance | C3-REL | Must; source-timed |
| @platform @ARC-01 @identity | C3-AUTH | Must; restatement; distinct |
| @platform @ARC-02 @managed-identity @negative | C3-AUTH | Must; restatement; distinct |
| @platform @ARC-03 @authorization | C3-AUTH | Must; distinct |
| @platform @ARC-04 @residency | C3-BND | Must; restatement; distinct |
| @platform @ARC-05 @tenant-boundary | C3-BND | Must; distinct |
| @platform @ARC-06 @negative @model-governance | C3-BND | Must; distinct |
| @platform @ARC-07 @diagnostics @negative | C3-BND | Must; distinct |
| @platform @ARC-08 @approved-services | C3-REL | Must; one Scenario Outline; restatement; distinct from ARC-09..12 |
| @platform @ARC-09 @model-governance | C3-REL | Must; distinct |
| @platform @ARC-10 @change-control | C3-REL | Must; distinct |
| @platform @ARC-11 @data-sources | C3-SRC | Must; distinct |
| @platform @ARC-12 @release-gate | C3-REL | Must; distinct |
| @platform @ARC-13 @risk @freshness | C3-FRESH | Must; distinct from DISC-05 |
| @platform @ARC-14 @risk @location | C3-ANS | Must; distinct from DISC-01 |
| @transcript @DISC-01 @priority-must | C3-ANS | Discovery Must; distinct from ARC-14 |
| @transcript @DISC-02 @priority-must | C3-AUTH | Discovery Must; distinct from BR-03/ARC-03 |
| @transcript @DISC-03 @priority-must @negative @audit | C3-HAND | Discovery Must; distinct from BR-04 |
| @transcript @DISC-04 @priority-must @negative | C3-UNCERT | Discovery Must; distinct from BR-08 |
| @transcript @DISC-05 @priority-must @freshness | C3-FRESH | Discovery Must; distinct from ARC-13 |
| @transcript @ELAB-01 @BR-05 @priority-should @metric | C3-PERF | Should elaboration; reported with BR-05 |
| @transcript @DISC-06 @BR-07 @priority-could @feedback | C3-FBK | Could; distinct from BR-07 rating-only |
| @transcript @scope @read-only @negative | C3-PROH | Must; distinct from SOW no-write row |
| Feature tags @sow @platform @transcript | with source feature | Covered |

**Architecture-Neutral Boundary Assessment — PASS**

Comprehensiveness is additional evidence, disposition, and non-combined scenario proof. No component, topology, or mechanism is selected. Named platform standards appear only as labeled authoritative restatements.

---

## 39-row coverage ledger

Columns describe which C1/C2/C3 package owns the scenario. Treatment states Must/Should/Could and whether any strategy defers realization. Tension/omission records residual conflict or “none”.

| # | feature | exact scenario | all tags | C1 element | C2 element | C3 element | treatment | tension/omission |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Objective-statement-of-work | Return a grounded answer to an in-scope provider-network question | @sow @BR-01 @must | C1-ANS | C2-ANS | C3-ANS | Must in C1/C2/C3 | none |
| 2 | Objective-statement-of-work | Cite every factual claim | @sow @BR-02 @must | C1-ANS | C2-ANS | C3-ANS | Must in C1/C2/C3 | none |
| 3 | Objective-statement-of-work | Restrict results to the analyst business unit | @sow @BR-03 @must | C1-AUTH | C2-AUTH | C3-AUTH | Must in C1/C2/C3 | refined by DISC-02/ARC-03 timing; not omitted |
| 4 | Objective-statement-of-work | Refuse a coverage-determination question | @sow @BR-04 @must @negative | C1-PROH | C2-PROH | C3-PROH | Must in C1/C2/C3 | destination named only in DISC-03 (OQ-02); refusal itself not omitted |
| 5 | Objective-statement-of-work | Meet the response-time objective | @sow @BR-05 @should @metric | C1-PERF | C2-PERF | C3-PERF | Should in all; deferred-not-dropped in C1/C2; first-release quality in C3 | ELAB-01 reference points must not replace the median-under-6s target |
| 6 | Objective-statement-of-work | Retain query and response records | @sow @BR-06 @must @audit | C1-RET | C2-RET | C3-RET | Must in C1/C2/C3 | DISC-03 asks whether refusal evidence is already satisfied; not omitted |
| 7 | Objective-statement-of-work | Rate answer quality inline | @sow @BR-07 @could @feedback | C1-FBK | C2-FBK | C3-FBK | Could in C1/C2/C3; deferred-not-dropped; not promoted | none |
| 8 | Objective-statement-of-work | State uncertainty when no answer is found | @sow @BR-08 @must @negative | C1-ANS | C2-ANS | C3-UNCERT | Must in C1/C2/C3 | DISC-04 adds location/amendment wording; not omitted |
| 9 | Objective-statement-of-work | Keep processing in United States regions | @sow @NFR-01 @must @residency | C1-BND | C2-BND | C3-BND | Must in C1/C2/C3 | overlaps ARC-04 wording; both rows kept distinct |
| 10 | Objective-statement-of-work | Keep provider and member data within the UHG tenant | @sow @NFR-02 @must @tenant-boundary | C1-BND | C2-BND | C3-BND | Must in C1/C2/C3 | overlaps ARC-05; both rows kept distinct |
| 11 | Objective-statement-of-work | Meet business-hours availability target | @sow @NFR-03 @should @availability | C1-PERF | C2-PERF | C3-PERF | Should in all; deferred-not-dropped in C1/C2; first-release quality in C3 | none |
| 12 | Objective-statement-of-work | Require responsible AI assessment before production | @sow @NFR-04 @must @release-gate | C1-REL | C2-REL | C3-REL | Must in C1/C2/C3; Ring 4; not deferred past source gate | none |
| 13 | Objective-statement-of-work | Require security review and ATO before go-live | @sow @NFR-05 @must @release-gate | C1-REL | C2-REL | C3-REL | Must in C1/C2/C3; Ring 5; not deferred past source gate | none |
| 14 | Objective-statement-of-work | Do not write to a system of record | @sow @scope @negative | C1-PROH | C2-PROH | C3-PROH | Must-equivalent unnumbered SOW scenario in C1/C2/C3 | overlaps transcript read-only; both rows kept distinct |
| 15 | Objective-statement-of-work | Exclude prohibited subject matter | @sow @scope @negative | C1-PROH | C2-PROH | C3-PROH | Must-equivalent unnumbered SOW scenario in C1/C2/C3 | overlaps BR-04 for coverage; clinical/claims remain this row |
| 16 | Objective-statement-of-work | Enforce contractual release acceptance conditions | @sow @constraint @acceptance | C1-REL | C2-REL | C3-REL + C3-IVV | Must-equivalent unnumbered SOW scenario; Ring 3–5 | none |
| 17 | Objective-statement-of-work | Use required delivery governance constraints | @sow @constraint @governance | C1-REL | C2-REL | C3-REL | Must-equivalent unnumbered SOW scenario; source-timed | OQ-03 GitHub vs mandated Azure DevOps tracking; constraint not dropped |
| 18 | Architecture-docs-platform-constraints | Accept Microsoft Entra ID only | @platform @ARC-01 @identity | C1-AUTH | C2-AUTH | C3-AUTH | Must in C1/C2/C3; `AUTHORITATIVE CONSTRAINT — not a proposed commitment` | none |
| 19 | Architecture-docs-platform-constraints | Disallow static application credentials | @platform @ARC-02 @managed-identity @negative | C1-AUTH | C2-AUTH | C3-AUTH | Must in C1/C2/C3; `AUTHORITATIVE CONSTRAINT — not a proposed commitment` | none |
| 20 | Architecture-docs-platform-constraints | Evaluate authorization before retrieval | @platform @ARC-03 @authorization | C1-AUTH | C2-AUTH | C3-AUTH | Must in C1/C2/C3 | corroborates DISC-02; rows not combined |
| 21 | Architecture-docs-platform-constraints | Keep processing and storage in United States Azure regions | @platform @ARC-04 @residency | C1-BND | C2-BND | C3-BND | Must in C1/C2/C3; `AUTHORITATIVE CONSTRAINT — not a proposed commitment` | distinct from NFR-01 |
| 22 | Architecture-docs-platform-constraints | Prevent customer data from leaving the tenant | @platform @ARC-05 @tenant-boundary | C1-BND | C2-BND | C3-BND | Must in C1/C2/C3 | distinct from NFR-02 |
| 23 | Architecture-docs-platform-constraints | Prohibit training and fine tuning on customer data | @platform @ARC-06 @negative @model-governance | C1-BND | C2-BND | C3-BND | Must in C1/C2/C3 | none |
| 24 | Architecture-docs-platform-constraints | Exclude provider payloads from diagnostic logging | @platform @ARC-07 @diagnostics @negative | C1-BND | C2-BND | C3-BND | Must in C1/C2/C3 | none |
| 25 | Architecture-docs-platform-constraints | Use the approved platform service for each capability | @platform @ARC-08 @approved-services | C1-REL | C2-REL | C3-REL | Must in C1/C2/C3; one Scenario Outline; `AUTHORITATIVE CONSTRAINT — not a proposed commitment` | six example pairs stay inside this single row; not split; not treated as design selections |
| 26 | Architecture-docs-platform-constraints | Restrict model use to the approved allowlist | @platform @ARC-09 @model-governance | C1-REL | C2-REL | C3-REL | Must in C1/C2/C3; before a model is proposed for use | none |
| 27 | Architecture-docs-platform-constraints | Govern a model version change | @platform @ARC-10 @change-control | C1-REL | C2-REL | C3-REL | Must in C1/C2/C3; before version change | none |
| 28 | Architecture-docs-platform-constraints | Access all approved data sources using their defined modes | @platform @ARC-11 @data-sources | C1-SRC | C2-SRC | C3-SRC | Must in C1/C2/C3 | nightly export vs DISC-05 expectation (OQ-01); modes not omitted |
| 29 | Architecture-docs-platform-constraints | Enforce all production release gates | @platform @ARC-12 @release-gate | C1-REL | C2-REL | C3-REL | Must in C1/C2/C3; Ring 5; not deferred past source gate | none |
| 30 | Architecture-docs-platform-constraints | Do not claim intra-day amendment freshness | @platform @ARC-13 @risk @freshness | C1-SRC | C2-SRC | C3-FRESH | Must in C1/C2/C3 | OQ-01 tension with DISC-05; both remain Must |
| 31 | Architecture-docs-platform-constraints | Guard against location-level misinterpretation | @platform @ARC-14 @risk @location | C1-ANS | C2-ANS | C3-ANS | Must in C1/C2/C3 | distinct from DISC-01 |
| 32 | Transcripts-discovery-workshop-session-1 | Answer contract status at the identified location | @transcript @DISC-01 @priority-must | C1-ANS | C2-ANS | C3-ANS | Discovery Must in C1/C2/C3 | newly discovered; not a silent SOW amendment |
| 33 | Transcripts-discovery-workshop-session-1 | Authorize before retrieving business-unit data | @transcript @DISC-02 @priority-must | C1-AUTH | C2-AUTH | C3-AUTH | Discovery Must in C1/C2/C3 | newly discovered timing rule; corroborates ARC-03 |
| 34 | Transcripts-discovery-workshop-session-1 | Refuse, route, and log a coverage-determination request | @transcript @DISC-03 @priority-must @negative @audit | C1-PROH | C2-PROH | C3-HAND | Discovery Must in C1/C2/C3 | OQ-02 route-owner unnamed in platform; benefits-team destination retained |
| 35 | Transcripts-discovery-workshop-session-1 | State record-specific uncertainty without inventing an answer | @transcript @DISC-04 @priority-must @negative | C1-ANS | C2-ANS | C3-UNCERT | Discovery Must in C1/C2/C3 | newly discovered wording vs BR-08; both kept |
| 36 | Transcripts-discovery-workshop-session-1 | Surface the known amendment freshness limitation | @transcript @DISC-05 @priority-must @freshness | C1-SRC | C2-SRC | C3-FRESH | Discovery Must in C1/C2/C3 | OQ-01 vs ARC-11 nightly export / ARC-13; not dropped |
| 37 | Transcripts-discovery-workshop-session-1 | Measure operational response-time expectation | @transcript @ELAB-01 @BR-05 @priority-should @metric | C1-PERF | C2-PERF | C3-PERF | Should elaboration in C1/C2/C3; deferred-not-dropped in C1/C2 | does not override BR-05 |
| 38 | Transcripts-discovery-workshop-session-1 | Capture detailed optional negative feedback | @transcript @DISC-06 @BR-07 @priority-could @feedback | C1-FBK | C2-FBK | C3-FBK | Could in C1/C2/C3; deferred-not-dropped; not promoted | none |
| 39 | Transcripts-discovery-workshop-session-1 | Keep the first release read only | @transcript @scope @read-only @negative | C1-PROH | C2-PROH | C3-PROH | Must-equivalent unnumbered transcript scenario in C1/C2/C3 | distinct from SOW no-write row |

Coverage count: 39/39
