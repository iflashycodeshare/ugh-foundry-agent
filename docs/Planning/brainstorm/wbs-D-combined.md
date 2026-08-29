# WBS-D — Combined Human Delivery Plan

**Variant:** D — Combined best of WBS-A, WBS-B, and WBS-C  
**Staffing model:** Human (optimized specialist team with low-risk coordination multi-hatting)  
**Based on decomposition:** DEC-008 Candidate Hybrid selected at DP-4  
**Phase:** Ring 0 brainstorm Phase 2 competing-WBS construction only  
**Date:** 2026-08-28  
**Workspace posture:** Tier 3 Enterprise Program Office; Human-in-the-Loop; Full Governance  
**Model Selector consultation:** Skipped because no subagent dispatch capability was available in this session; no model assignment or implementation choice is made here.  
**Status:** **NOT SELECTED / human selection pending**

## Scope Guard

- This document creates only the WBS-D human-staffed combined alternative required by `.github/skills/brainstorming.md` section 8. It does not select a WBS, start Ring 1, authorize delivery, close a gate, or update any checklist, status, journal, baseline, or other artifact.
- It makes no cost or duration estimate and states no target date.
- It makes no architecture, product, topology, component, model, runtime, database, index, release-method, or deployment selection.
- Named ARC standards are **authoritative constraints only**, not proposed commitments or selections.
- The source priorities and 39-scenario contract remain unchanged. Evidence may be reused, but each source scenario retains a distinct acceptance assertion.
- The shared scope contains exactly the following eight work packages. No work package is added, removed, split, or renamed.

| WP | Work Package | Scope Outcome |
| --- | --- | --- |
| WP-1 | Authority and Acceptance Spine | Freeze source authority, all 39 scenario assertions, priorities, decision boundaries, and evidence rules; re-attest them at convergence. |
| WP-2 | Identity, Authorization, and Containment | Establish identity, pre-retrieval authorization, residency, tenant containment, credential, and customer-data-use acceptance evidence. |
| WP-3 | Source Access, Freshness, Location, and Read-Only Integrity | Establish approved source-mode, truthful freshness, location-context, and distinct read-only acceptance evidence. |
| WP-4 | Grounded Cited Answers and Uncertainty | Establish grounded answers, authorized claim-level citations, and uncertainty without invention after WP-2 and WP-3 gates. |
| WP-5 | Prohibition, Refusal, Routing, and Refusal Evidence | Establish prohibited-subject refusal, coverage-determination refusal, accountable routing, and refusal-specific evidence. |
| WP-6 | Audit, Diagnostic Separation, and Optional Feedback | Establish required audit retention, diagnostic payload exclusion, and optional feedback evidence without priority promotion. |
| WP-7 | Performance and Availability Evidence | Measure and report Should-level response-time and availability evidence without promoting either to Must. |
| WP-8 | Governance, Release Evidence, and Convergence | Converge independent review, governance, and release evidence against the WP-1 spine without authorizing release. |

## Optimized Human Staffing Roster

Roles are named; individual people are intentionally not fabricated. Specialist execution remains separated for authorization, security, safety, testing, and governance. Multi-hatting is limited to low-risk coordination, traceability, and evidence handoff.

| Human Role | Mode | Work Packages | Assignment Boundary and Optimization Rationale |
| --- | --- | --- | --- |
| Program Executive / Decision Authority | Govern / human disposition | WP-1, WP-8; OQ-03 | Owns authority decisions and confirms that WBS-D remains an unselected Ring 0 alternative; does not execute package evidence. |
| Business Owner | Human disposition / acceptance input | WP-1, WP-3, WP-5; OQ-01, OQ-02 | Supplies business meanings for freshness and routing; does not substitute an assumption for a disposition. |
| Acceptance and Integration Lead | Lead / coordinate | WP-1, WP-8 | Maintains the acceptance spine and convergence handoff. This is low-risk coordination multi-hatting because the role does not execute or independently approve specialist controls. |
| Identity and Authorization Specialist | Lead / execute | WP-2 | Owns pre-retrieval authorization and identity evidence; remains separate from WP-4 answer execution. |
| Source Integrity and Freshness Specialist | Lead / execute | WP-3 | Owns source modes, freshness, location context, and read-only integrity; remains separate from business disposition authority. |
| Grounded Answer Specialist | Lead / execute | WP-4 | Owns grounding, authorized citations, and uncertainty evidence only after predecessor gates clear. |
| Safety and Refusal Specialist | Lead / execute | WP-5 | Owns prohibited-subject, refusal, routing, and refusal-evidence behavior; remains separate from the OQ-02 decision owner. |
| Audit and Diagnostics Specialist | Lead / execute | WP-6 | Owns audit retention, diagnostic separation, and Could-level feedback evidence. |
| Performance and Availability Analyst | Lead / execute | WP-7 | Owns measurement design and reporting while preserving Should priority. |
| Governance and Release Manager | Lead / execute | WP-8 | Owns governance baseline and release-evidence assembly; cannot approve their own evidence. |
| Independent Security Reviewer | Independent review | WP-2, WP-4, WP-5, WP-6, WP-8 | Reviews authorization ordering, citation boundary, refusal evidence, diagnostic separation, and security release evidence; performs no execution work. |
| Independent QA and IV&V Lead | Independent review | WP-1 through WP-8 | Verifies scenario-level evidence, priority preservation, accessibility where applicable, and final 39/39 convergence; performs no package execution. |

## Work-Package Schedule

Stages and predecessor gates express sequence only. They are not dates or duration estimates. WP-1 remains both the opening acceptance authority and the convergence reference.

| Stage | WP | Owner Role | Predecessor Gates | Exit Gate and Independent Check | Risk |
| --- | --- | --- | --- | --- | --- |
| S0 | WP-1 Authority and Acceptance Spine | Acceptance and Integration Lead | DEC-008 active; source features available | G1: 39 distinct scenario assertions, priorities, authority labels, OQs, and evidence-reuse rules frozen; Independent QA and IV&V Lead approves the spine. | H |
| S1 | WP-2 Identity, Authorization, and Containment | Identity and Authorization Specialist | G1 | G2: pre-retrieval authorization and containment evidence independently accepted by the Independent Security Reviewer. | H |
| S1 | WP-3 Source Access, Freshness, Location, and Read-Only Integrity | Source Integrity and Freshness Specialist | G1; OQ-01 before freshness acceptance | G3: source modes, location integrity, distinct read-only assertions, and truthful freshness evidence accepted; OQ-01 attached. | H |
| S2 | WP-4 Grounded Cited Answers and Uncertainty | Grounded Answer Specialist | G2 and G3; WP-2 pre-retrieval authorization must precede retrieval/grounding/citation integration | G4: grounded answers, authorized citations, and uncertainty evidence independently accepted. | H |
| S2 | WP-5 Prohibition, Refusal, Routing, and Refusal Evidence | Safety and Refusal Specialist | G1; WP-6 audit-evidence contract available; OQ-02 before completion | G5: prohibited-topic and coverage refusal, routing, and refusal-specific evidence accepted; OQ-02 attached. | H |
| S1/S2 | WP-6 Audit, Diagnostic Separation, and Optional Feedback | Audit and Diagnostics Specialist | G1; refusal evidence contract coordinated with WP-5 | G6: audit retention and diagnostic exclusion independently proven as separate obligations; feedback remains Could. | H |
| S1/S3 | WP-7 Performance and Availability Evidence | Performance and Availability Analyst | G1 for measurement contract; representative accepted WP-4 path for measurement | G7: Should-level response-time and availability evidence reported with methodology and findings. | M |
| S1/S4 | WP-8 Governance, Release Evidence, and Convergence | Governance and Release Manager | G1 for constraint inventory; OQ-03 before governance baseline; G2 through G7 before convergence | G8: governance baseline, independent reviews, release evidence, and WP-1 39/39 re-attestation complete; no release authorization granted. | H |

### Gate Discipline

1. WP-1 acceptance spine precedes every other work package and is re-attested at G8.
2. OQ-01 is a human/business critical-path disposition before WP-3 freshness acceptance and WP-4 integration.
3. OQ-02 is a human/business critical-path disposition before WP-5 completion.
4. OQ-03 is a human/governance critical-path disposition before the WP-8 governance baseline.
5. WP-2 pre-retrieval authorization must precede WP-4 retrieval, grounding, and citation integration.
6. Evidence design may occur before a gate, but evidence integration, acceptance, completion, or baseline claims may not bypass that gate.

## Parallel Streams

| Stream | Work Packages | Lead | Start Condition | Convergence Rule |
| --- | --- | --- | --- | --- |
| Acceptance Spine | WP-1 | Acceptance and Integration Lead | Immediately within this Phase 2 alternative | No dependent stream may alter scenario wording, priority, authority, or package scope. |
| Boundary Assurance | WP-2 | Identity and Authorization Specialist | After G1 | G2 must close before WP-4 retrieval/grounding/citation integration. |
| Source Truth | WP-3 | Source Integrity and Freshness Specialist | After G1 | Non-freshness evidence may proceed, but OQ-01 is required for freshness acceptance and WP-4 integration. |
| Answer Integrity | WP-4 | Grounded Answer Specialist | Evidence design after G1; integration after G2 and G3 | Citations must remain inside the authorized set; uncertainty must not invent location or amendment facts. |
| Safety and Refusal | WP-5 | Safety and Refusal Specialist | Refusal design after G1 | OQ-02 and refusal-specific audit evidence are required before completion. |
| Audit and Diagnostics | WP-6 | Audit and Diagnostics Specialist | After G1 | Audit retention and diagnostic exclusion remain distinct evidence planes; WP-5 consumes the refusal-evidence contract. |
| Service Evidence | WP-7 | Performance and Availability Analyst | Measurement design after G1 | Measurement uses representative accepted behavior and retains Should priority. |
| Governance Convergence | WP-8 | Governance and Release Manager | Constraint inventory after G1 | OQ-03 precedes baseline; G2 through G7 and independent reviews precede convergence. |

This retains WBS-A's dependency-safe concurrency while using WBS-B's specialist ownership and independent gate review. It allows WBS-C-style early evidence design only where no acceptance or integration claim is made.

## Milestones

Milestones are criteria-based and have no target dates.

| Milestone | Criteria |
| --- | --- |
| M1 — Acceptance Spine Frozen | G1 closes with exactly 39 distinct assertions, preserved priorities, explicit source authority, OQ ownership, and no package-scope drift. |
| M2 — Human Critical Inputs Controlled | OQ-01, OQ-02, and OQ-03 each have named human owner roles, explicit blocked outcomes, and no agent- or specialist-invented disposition. |
| M3 — Authorization Boundary Accepted | G2 closes with independent confirmation that authorization occurs before retrieval and cannot be replaced by post-retrieval filtering. |
| M4 — Source Truth Accepted | G3 closes with OQ-01 disposition, defined access modes, truthful freshness context, location integrity, and two distinct read-only assertions. |
| M5 — Answer and Safety Evidence Accepted | G4 and G5 close with grounded authorized citations, uncertainty without invention, prohibited-subject refusal, routing, and refusal-specific evidence; OQ-02 is attached to G5. |
| M6 — Audit and Diagnostic Separation Accepted | G6 closes with required retention and diagnostic payload exclusion proven independently; optional feedback remains Could. |
| M7 — Service Evidence Reported | G7 closes with response-time and availability evidence reported as Should findings without priority promotion. |
| M8 — Governance Baseline and Convergence Accepted | OQ-03 is dispositioned before the governance baseline; G8 re-attests WP-1, independent reviews, source-required governance, and all 39 scenarios without selecting or authorizing release. |

## OQ Critical-Path Table

| OQ | Human Owner Role | Required Disposition | Blocks | Work Allowed While Pending |
| --- | --- | --- | --- | --- |
| OQ-01 | Business Owner | Confirm the interpretation of an amendment loaded yesterday against nightly-export availability while preserving the prohibition on intra-day freshness claims. | WP-3 freshness acceptance and WP-4 integration. | WP-3 source-mode inventory, location/read-only evidence, WP-2, WP-5 refusal design, WP-6 separation design, WP-7 metric design, and WP-8 constraint inventory. |
| OQ-02 | Business Owner | Confirm the accountable benefits-team destination and the required refusal-specific audit evidence interpretation. | WP-5 routing/refusal completion. | Refusal detection and wording, generic audit-retention design, and unrelated package evidence. |
| OQ-03 | Program Executive / Decision Authority | Reconcile current GitHub tracking with authoritative Azure DevOps work-tracking and source-control constraints without replacing those constraints. | WP-8 governance baseline. | WP-1 through WP-7 evidence and WP-8 constraint inventory short of baseline. |

## Bounded Assumption-Challenge and Evidence Experiments

These are C-derived evidence probes for OQs and high-uncertainty acceptance semantics. They may reject an interpretation or expose missing evidence. They cannot select a mechanism, product, topology, component, model, runtime, database, or index; add scope; alter priorities; or supply a human disposition.

| Experiment | Acceptance Question | Allowed Evidence Probe | Pass Condition | Failure Control |
| --- | --- | --- | --- | --- |
| EXP-AUTHZ | Can BR-03 be satisfied by retrieving broadly and filtering later? | Compare BR-03, DISC-02, and ARC-03 assertions. | Pre-retrieval authorization remains mandatory; retrieve-then-filter is rejected as the authorization control. | G2 stays open and WP-4 integration remains blocked. |
| EXP-CITE | Can a citation expose an identifier outside authorized scope? | Trace BR-02 citation fields against the already-authorized record set. | Every cited system and record identifier is authorized for the requester. | Citation evidence is rejected and G4 stays open. |
| EXP-FRESH | Does “loaded yesterday” imply availability before the nightly export? | Prepare an OQ-01 evidence brief comparing DISC-05, ARC-11, and ARC-13. | Human OQ-01 disposition is recorded and no intra-day freshness is claimed. | Freshness acceptance and WP-4 integration remain blocked. |
| EXP-LOC | May organization-level status be inferred across locations? | Challenge DISC-01, DISC-04, BR-08, and ARC-14 with ambiguous-location examples. | The addressed location is explicit; unsupported status or tier is not invented. | Ambiguous output is rejected as WP-4 evidence. |
| EXP-AUDIT | Can one undifferentiated record satisfy audit retention and diagnostic exclusion? | Compare BR-06 and DISC-03 retention with ARC-07 diagnostic exclusion. | Required audit evidence and payload-excluding diagnostics remain separately assertable. | G6 stays open; diagnostic evidence cannot close refusal-audit acceptance. |
| EXP-ROUTE | Does generic interaction retention complete DISC-03? | Prepare an OQ-02 brief distinguishing routing authority and refusal-specific evidence. | Human destination is confirmed and the refusal interaction has specific audit evidence. | WP-5 may prove refusal behavior but cannot claim completion. |
| EXP-GOV | May current GitHub use replace authoritative governance constraints? | Prepare an OQ-03 reconciliation brief against SOW-GOVERNANCE and ARC-08. | Human disposition preserves authoritative constraints and documents the relationship without substitution. | WP-8 constraint inventory may continue; governance baseline remains blocked. |

## Combination Rationale

Every retained element below is a deliberate cherry-pick. The source and rationale are explicit so the combined plan can be reviewed without inferring why a feature survived synthesis.

### Elements Taken from WBS-A (Speed)

| Cherry-Picked Element | Why Selected | How Used in WBS-D |
| --- | --- | --- |
| Dependency-safe parallel streams after WP-1 | Reduces avoidable sequencing while protecting the acceptance contract. | WP-2, non-gated WP-3 work, WP-5 design, WP-6, WP-7 design, and WP-8 inventory can proceed concurrently behind explicit gates. |
| Lean multi-hatting for low-risk coordination | Avoids duplicating integration and traceability roles without weakening specialist control ownership. | The Acceptance and Integration Lead coordinates WP-1 and WP-8 handoff only; execution and independent approval remain separate. |
| Small number of criteria-based convergence points | Keeps reviews focused on meaningful evidence rather than continuous coordination. | G1 through G8 align to work-package exits and hard human inputs. |
| Explicit OQ and authorization critical paths | Prevents apparent speed from bypassing non-compressible authority and control decisions. | OQ-01/02/03 and WP-2-to-WP-4 ordering are hard gates. |
| Evidence reuse without assertion collapse | Reduces duplicate evidence production while preserving auditability. | Related scenarios may cite shared evidence, but the ledger and G1 spine retain one distinct assertion per scenario. |

### Elements Taken from WBS-B (Depth)

| Cherry-Picked Element | Why Selected | How Used in WBS-D |
| --- | --- | --- |
| Specialist execution ownership | Authorization, security, safety, test, and governance errors have high consequences and need clear accountable expertise. | WP-2 through WP-8 each have a dedicated execution lead; no specialist executes multiple packages. |
| Independent security review | Execution evidence should not self-certify high-risk controls. | G2, G4, G5, G6, and G8 require an Independent Security Reviewer where relevant. |
| Independent QA and IV&V | The 39-scenario acceptance contract and release evidence require review separate from delivery. | G1 through G8 receive independent evidence review, with final 39/39 re-attestation at G8. |
| Explicit gate failure posture | A failed control should keep dependent work blocked rather than defaulting to proceed. | Each experiment and stage identifies the gate or completion claim that remains open on failure. |
| Dedicated governance and release ownership | Required governance and release evidence must not become incidental integration work. | A Governance and Release Manager owns WP-8 execution while independent roles approve evidence. |

### Elements Taken from WBS-C (Innovation)

| Cherry-Picked Element | Why Selected | How Used in WBS-D |
| --- | --- | --- |
| Bounded assumption-challenge experiments | Freshness, routing, authorization timing, citation exposure, location meaning, and log-plane semantics are uncertain enough to test before integration. | Seven evidence probes have narrow questions, pass conditions, and stop controls. |
| Hidden parallelism around hard gates | Evidence design can mature while human inputs are pending without falsely claiming acceptance or completion. | Non-gated source work, refusal design, metric design, and governance inventory proceed while their blocked outcomes wait. |
| Cross-functional challenge at defined points | A second discipline can expose semantic mistakes before they become integrated behavior. | Security and IV&V reviewers challenge specialist evidence only at named gates, avoiding a standing coordination body. |
| Explicit discard/rework rules | Exploratory evidence must not survive when its premise violates an authoritative constraint. | Failed or premature experiment evidence is rejected and cannot close a gate. |
| Priority-protection challenge | Strong evidence for a Should or Could must not silently promote scope. | G6 and G7 explicitly preserve Could and Should treatment. |

### Side Effects Mitigated

| Side Effect (Source WBS) | Severity | Mitigation in WBS-D |
| --- | --- | --- |
| A: Lean multi-hatting can blur execution, approval, and accountability. | H | Multi-hatting is confined to WP-1/WP-8 coordination; specialist execution and independent review remain separate. |
| A: Fast parallelism can start grounding before authorization or freshness truth is accepted. | H | G2 and G3 are hard predecessors to WP-4 integration; OQ-01 is attached to G3. |
| A: A compact roster can under-review security, safety, test, or governance evidence. | H | Dedicated specialists plus Independent Security Reviewer and Independent QA and IV&V Lead review consequential gates. |
| A: Optional-depth staging can be mistaken for dropping source scope. | M | All 39 scenarios remain in WP-1 and the ledger; Should/Could priority is preserved and never removed. |
| B: Full specialist separation can create excessive handoffs and coordination overhead. | M | One Acceptance and Integration Lead coordinates the common spine and convergence; review happens at named gates rather than continuously. |
| B: Review at every micro-step can serialize otherwise independent work. | M | Independent reviews occur at package exit gates while safe preparation runs in parallel. |
| B: Evidence depth can expand beyond source requirements. | H | WP-1 freezes source assertions; reviewers reject added requirements or architecture choices as scope defects. |
| B: Large role participation can dilute decision ownership. | M | OQ ownership remains with the Business Owner or Program Executive; each package has one execution lead and each gate names its reviewer. |
| C: Overlapping pods can duplicate work and create inconsistent evidence. | M | WBS-D uses specialist streams, a single WP-1 spine, shared evidence references, and no standing pods. |
| C: Experiments can become open-ended exploration or covert design selection. | H | Every experiment is bounded by an acceptance question, pass condition, failure control, and an explicit prohibition on implementation selection. |
| C: Failed experiments can generate rework and contaminate downstream evidence. | M | Premature or invalid evidence is discarded; dependent gate closure remains blocked until corrected evidence is independently accepted. |
| C: Cross-functional overlap can weaken single-point accountability. | H | One specialist owns execution per package; challengers review but do not co-own execution. |

## Risks

| Risk | Likelihood | Impact | Mitigation |
| --- | --- | --- | --- |
| WP-1 wording or priority drift across parallel streams | M | H | G1 freezes the spine; Independent QA and IV&V compares every exit to the exact ledger and source priority. |
| Authorization is treated as post-retrieval filtering | L | H | EXP-AUTHZ plus Independent Security Reviewer approval at G2; WP-4 remains blocked on failure. |
| Citation identifiers leak unauthorized records | M | H | EXP-CITE validates citations against the authorized set before G4. |
| Freshness is overstated or location context is misread | M | H | OQ-01, EXP-FRESH, EXP-LOC, and G3 precede WP-4 integration. |
| Refusal routing or evidence remains assumed | M | H | OQ-02 and EXP-ROUTE block G5 completion. |
| Audit retention and diagnostics are conflated | M | H | EXP-AUDIT and Independent Security Reviewer approval at G6 preserve separate assertions. |
| Governance tooling conflict is silently resolved by convenience | M | H | OQ-03 and EXP-GOV block the WP-8 governance baseline. |
| Should/Could evidence becomes an unauthorized priority change | M | M | WP-1 priority lock and G6/G7 independent review reject promotion. |
| Specialist handoffs lose context | M | M | Acceptance and Integration Lead maintains one evidence index and gate handoff against WP-1. |
| Named ARC standards are mistaken for selections | M | H | Every use is labeled and governed as an authoritative constraint only; architecture-neutrality review is part of G8. |

## Trade-offs

- **Strengths:** Preserves A's safe concurrency, B's specialist and independent assurance, and C's bounded challenge of uncertain acceptance semantics. It gives high-risk controls clear ownership while keeping coordination concentrated around the acceptance spine and exit gates.
- **Weaknesses:** More human roles and review formality than WBS-A; less exploratory overlap than WBS-C; more coordination than a single-threaded plan. Human OQ dispositions remain non-compressible blockers.
- **Best suited for:** A regulated, human-governed objective where authorization, freshness, location meaning, refusal evidence, and release governance need strong assurance without serializing all evidence preparation.
- **Deliberate compromise:** WBS-D does not maximize any single dimension. It accepts bounded specialist handoffs and bounded rework to avoid A's assurance gaps, B's pervasive coordination burden, and C's uncontrolled overlap.

## Architecture-Neutrality Statement

This WBS sequences human responsibility, acceptance evidence, and review gates only. It does not select an architecture, product, topology, component, model, runtime, database, index, release method, or deployment approach.

Where source scenarios name Microsoft Entra ID, managed identity, United States Azure regions, the UHG tenant boundary, Microsoft Foundry hosted agents, Azure Key Vault with managed identity, Azure Monitor and Application Insights, Bicep through Azure DevOps pipelines, Azure DevOps Boards, Azure DevOps Repos, the UHG AI allowlist, or change advisory board approval, each name is an **authoritative ARC or SOW constraint only**. Restatement is not selection.

## Source Priority Statement

- BR and NFR priorities remain exactly as tagged in the SOW feature.
- DISC-01 through DISC-05 remain Must; DISC-06 remains Could; ELAB-01 remains Should.
- BR-05, NFR-03, and ELAB-01 remain Should. BR-07 and DISC-06 remain Could.
- ARC-01 through ARC-14 are recorded as Constraints because the ARC feature supplies authoritative platform controls rather than product choices; ARC-08 is one Scenario Outline.
- The five unnumbered SOW/DISC scenarios remain Constraints.
- SOW acceptance requires ATO submission, while ARC-12 requires the package to be submitted and accepted, together with its other stated production gates. The stronger ARC-12 production condition is preserved without authorizing release.
- Evidence reuse is allowed only when every source scenario retains a distinct assertion and ledger row.

## Scenario Traceability Ledger

Each source scenario appears exactly once as a primary row. ARC-08 is one Scenario Outline.

| Source ID | Exact Scenario Title | Priority | WP | Treatment |
| --- | --- | --- | --- | --- |
| BR-01 | Return a grounded answer to an in-scope provider-network question | Must | WP-4 | Grounded-answer evidence after G2 authorization and G3 source acceptance. |
| BR-02 | Cite every factual claim | Must | WP-4 | Claim-level source-system and record citations constrained to the authorized set. |
| BR-03 | Restrict results to the analyst business unit | Must | WP-2 | Business-unit boundary proven through pre-retrieval authorization evidence. |
| BR-04 | Refuse a coverage-determination question | Must | WP-5 | Coverage-determination refusal evidenced; WP-5 completion still requires OQ-02. |
| BR-05 | Meet the response-time objective | Should | WP-7 | Median response-time evidence measured and reported; priority remains Should. |
| BR-06 | Retain query and response records | Must | WP-6 | Query and response audit retention evidenced separately from diagnostics. |
| BR-07 | Rate answer quality inline | Could | WP-6 | Optional rating association evidence; priority remains Could. |
| BR-08 | State uncertainty when no answer is found | Must | WP-4 | No-answer uncertainty and no-guessing behavior evidenced. |
| NFR-01 | Keep processing in United States regions | Must | WP-2 | Processing and storage residency acceptance evidence under the authoritative boundary. |
| NFR-02 | Keep provider and member data within the UHG tenant | Must | WP-2 | Tenant-boundary containment acceptance evidence. |
| NFR-03 | Meet business-hours availability target | Should | WP-7 | Availability evidence measured over the agreed period; priority remains Should. |
| NFR-04 | Require responsible AI assessment before production | Must | WP-8 | Signed responsible AI assessment included in release evidence. |
| NFR-05 | Require security review and ATO before go-live | Must | WP-8 | Security review and ATO evidence independently reviewed before convergence. |
| ARC-01 | Accept Microsoft Entra ID only | Constraint | WP-2 | Authoritative identity-provider constraint only; no selection made by this WBS. |
| ARC-02 | Disallow static application credentials | Constraint | WP-2 | Authoritative managed-identity and no-static-credential constraint only. |
| ARC-03 | Evaluate authorization before retrieval | Constraint | WP-2 | Hard G2 predecessor to WP-4 retrieval/grounding/citation integration. |
| ARC-04 | Keep processing and storage in United States Azure regions | Constraint | WP-2 | Authoritative residency constraint with distinct assertion; no topology selected. |
| ARC-05 | Prevent customer data from leaving the tenant | Constraint | WP-2 | Authoritative tenant-boundary constraint with distinct assertion. |
| ARC-06 | Prohibit training and fine tuning on customer data | Constraint | WP-2 | Customer-data training and fine-tuning prohibition evidenced as a containment obligation. |
| ARC-07 | Exclude provider payloads from diagnostic logging | Constraint | WP-6 | Diagnostic payload exclusion evidenced separately from BR-06 audit retention. |
| ARC-08 | Use the approved platform service for each capability | Constraint | WP-8 | One Scenario Outline; named standards remain authoritative constraints only. |
| ARC-09 | Restrict model use to the approved allowlist | Constraint | WP-8 | Allowlist governance evidence only; no model selected. |
| ARC-10 | Govern a model version change | Constraint | WP-8 | Change approval and evaluation-baseline evidence; no version selected. |
| ARC-11 | Access all approved data sources using their defined modes | Constraint | WP-3 | Defined source-access modes evidenced without selecting a replacement mechanism. |
| ARC-12 | Enforce all production release gates | Constraint | WP-8 | Stronger production-gate evidence preserved; this WBS grants no release authority. |
| ARC-13 | Do not claim intra-day amendment freshness | Constraint | WP-3 | Freshness claim boundary preserved; OQ-01 required before G3. |
| ARC-14 | Guard against location-level misinterpretation | Constraint | WP-3 | Location-level contract context and no cross-location inference evidenced. |
| DISC-01 | Answer contract status at the identified location | Must | WP-3 | Identified-location answer context evidenced without group-level inference. |
| DISC-02 | Authorize before retrieving business-unit data | Must | WP-2 | Query-time authorization and non-retrieval of unauthorized records evidenced at G2. |
| DISC-03 | Refuse, route, and log a coverage-determination request | Must | WP-5 | Refusal, human-confirmed routing, and refusal-specific audit evidence; OQ-02 gates completion. |
| DISC-04 | State record-specific uncertainty without inventing an answer | Must | WP-4 | Missing location/amendment record stated without invented status or tier. |
| DISC-05 | Surface the known amendment freshness limitation | Must | WP-3 | Available amendment information and truthful freshness context; OQ-01 gates acceptance. |
| DISC-06 | Capture detailed optional negative feedback | Could | WP-6 | Optional negative rating and comment evidence; priority remains Could. |
| ELAB-01 | Measure operational response-time expectation | Should | WP-7 | Stakeholder reference-point measurement reported separately from BR-05; priority remains Should. |
| SOW-SCOPE-READONLY | Do not write to a system of record | Constraint | WP-3 | Contractual read-only assertion evidenced distinctly. |
| SOW-SCOPE-PROHIBITED | Exclude prohibited subject matter | Constraint | WP-5 | Prohibited clinical, adjudication, and coverage subject matter excluded. |
| SOW-ACCEPTANCE | Enforce contractual release acceptance conditions | Constraint | WP-1 | Frozen in the acceptance spine and re-attested at G8 with independent validation and required release evidence. |
| SOW-GOVERNANCE | Use required delivery governance constraints | Constraint | WP-8 | Authoritative governance evidence preserved; OQ-03 gates the baseline. |
| DISC-SCOPE-READONLY | Keep the first release read only | Constraint | WP-3 | First-release read-only behavior evidenced distinctly from SOW-SCOPE-READONLY. |

### Traceability Attestation

- BR-01 through BR-08: 8 rows.
- NFR-01 through NFR-05: 5 rows.
- ARC-01 through ARC-14: 14 rows, with ARC-08 counted once as one Scenario Outline.
- DISC-01 through DISC-06: 6 rows.
- ELAB-01: 1 row.
- SOW-SCOPE-READONLY, SOW-SCOPE-PROHIBITED, SOW-ACCEPTANCE, SOW-GOVERNANCE, and DISC-SCOPE-READONLY: 5 rows.
- **Total attestation: 39/39.** No source scenario is omitted, duplicated, collapsed, added, or reprioritized.

## Closing Status

**NOT SELECTED / human selection pending.** WBS-D is a Ring 0 Phase 2 comparison artifact only. Ring 1 has not started, no WBS has been selected, and no architecture, product, topology, component, model, runtime, database, index, cost, duration, release, or deployment commitment is made.