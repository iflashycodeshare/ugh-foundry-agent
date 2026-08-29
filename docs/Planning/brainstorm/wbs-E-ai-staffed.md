# WBS-E — AI-Agent-Staffed Combined Delivery Plan

**Variant:** E — AI-agent-staffed mirror of WBS-D  
**Staffing model:** AI agents with one standing human top role  
**Based on decomposition:** DEC-008 Candidate Hybrid selected at DP-4  
**Mirror baseline:** WBS-D Combined Human Delivery Plan  
**Phase:** Ring 0 brainstorm Phase 2 competing-WBS construction only  
**Date:** 2026-08-28  
**Workspace posture:** Tier 3 Enterprise Program Office; Human-in-the-Loop; Full Governance  
**Top role:** Human Program Executive  
**Model Selector consultation:** Skipped because Model Selector dispatch was not available in the exposed session tools; no model assignment or implementation choice is made here.  
**Status:** **NOT SELECTED / human choice pending**

## Scope Guard

- This document creates only the WBS-E AI-agent-staffed alternative required by `.github/skills/brainstorming.md` section 8. It does not select a WBS, start Ring 1, authorize delivery, close a gate, or update any checklist, status, journal, baseline, or other artifact.
- It makes no cost or duration estimate and states no target date.
- It makes no architecture, product, topology, component, model, runtime, database, index, release-method, or deployment selection.
- Named ARC standards are **authoritative source constraints only**, not proposed commitments or selections.
- The source priorities and 39-scenario contract remain unchanged. Evidence may be reused, but each source scenario retains a distinct acceptance assertion.
- The shared scope contains exactly the following eight work packages. No work package is added, removed, split, or renamed.
- Only staffing, execution mode, and AI capability-gap controls differ from WBS-D.

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

## Explicit WBS-D Mirror Conformance

| Controlled Dimension | WBS-E Conformance | Permitted Difference |
| --- | --- | --- |
| Work packages and names | Exact eight-package mirror of WBS-D. | None. |
| Package scope outcomes | Exact mirror of WBS-D. | None. |
| Stages and sequence | Exact S0, S1, S2, S1/S2, S1/S3, and S1/S4 placement from WBS-D. | Owner labels identify mapped agents. |
| Dependencies and predecessor gates | Exact G1 through G8 and OQ dependency ordering from WBS-D. | None. |
| Parallel streams | Exact stream names, package membership, start conditions, and convergence rules from WBS-D. | Lead labels identify mapped agents. |
| Milestones | Exact M1 through M8 criteria from WBS-D. | None. |
| Gate discipline | Exact six gate-discipline rules from WBS-D. | Agent outputs require the human checkpoints defined below. |
| OQ critical path | Exact OQ-01, OQ-02, and OQ-03 blocked outcomes and allowed pending work from WBS-D. | Agents prepare evidence; mandated humans disposition. |
| Evidence experiments | Exact seven bounded experiments, pass conditions, and failure controls from WBS-D. | Mapped agents execute and review the probes. |
| Risks and trade-offs | Exact WBS-D delivery risks and inherited trade-offs are retained. | AI capability gaps receive additional controls, not changed scope. |
| Source coverage | Exact 39-row source ledger, titles, priorities, and WP mappings from WBS-D. | None. |
| Architecture neutrality | Exact WBS-D neutrality and priority posture. | None. |

## Human-vs-Agent Boundary

The **Human Program Executive** is the only standing human role in WBS-E. All recurring planning, coordination, specialist execution, evidence assembly, challenge, and review roles below are staffed by specific AI agents whose displayed role/name is marked active in `.github/workspace-config.md`.

Mandated human authorities remain human even though they are not standing delivery staff. An accountable human business owner must disposition OQ-01 and OQ-02. A human governance authority must disposition OQ-03. Mandated human security, architecture, responsible-AI, ATO, change-advisory, release, ADR/ARB, ring-gate, and WBS-selection authorities retain their source-defined decisions. The Human Program Executive coordinates those checkpoints and verifies the authority record; the Program Executive does not manufacture another authority's disposition.

AI agents may analyze sources, execute bounded tasks, prepare evidence, identify gaps, draft recommendations, and perform advisory reviews. They may not approve their own evidence, resolve OQs by assumption, accept an ADR, select an architecture or WBS, pass a ring gate, approve security architecture, grant ATO, sign a responsible-AI assessment, approve a release, or substitute for a change advisory board or other mandated human authority.

Execution modes follow `.github/skills/agent-execution-model.md`: the Human Program Executive operates as human/background governance; suitable L1/L2 leads operate as background agents; specialist L3, reviewer, and enabler roles operate locally for one task or review and terminate after reporting.

## Agent Mapping

**Active tier:** Tier 3 — Enterprise Program Office  
**Top role (human):** Program Executive

Every non-top WBS-D role maps to an active roster entry by its displayed role/name. No inactive or fabricated agent is used.

| WBS-D Human Role | WBS-E Assignment | Active Agent File | Execution Mode | Capability Match | WPs |
| --- | --- | --- | --- | --- | --- |
| **Program Executive / Decision Authority** | **HUMAN — Program Executive; not replaced** | N/A | Human/background governance | Preserves the Tier 3 top role and mandated human authority. | WP-1, WP-8; OQ-03 coordination |
| Business Owner | Business Owner | `.github/agents/business-owner.md` | Local/task-scoped advisory agent | Prepares business-language acceptance briefs and routes OQ-01/OQ-02 to an accountable human business owner; cannot disposition them. | WP-1, WP-3, WP-5 |
| Acceptance and Integration Lead | Program Manager | `.github/agents/program-manager.md` | Background L1 lead agent | Owns integrated acceptance, dependency, package, and convergence coordination. | WP-1, WP-8 |
| Identity and Authorization Specialist | Azure Principal Architect | `.github/agents/azure-architect.md` | Local/task-scoped specialist agent | Produces identity, authorization-ordering, residency, tenant, and credential evidence under source constraints. | WP-2 |
| Source Integrity and Freshness Specialist | API Architect | `.github/agents/api-architect.md` | Local/task-scoped specialist agent | Analyzes defined source access modes, read-only boundaries, freshness, and source contracts. | WP-3 |
| Grounded Answer Specialist | Solution Architect | `.github/agents/solution-architect.md` | Local/task-scoped specialist agent | Produces grounded-answer, authorized-citation, and uncertainty evidence without selecting implementation. | WP-4 |
| Safety and Refusal Specialist | Responsible AI Specialist | `.github/agents/responsible-ai.md` | Local/task-scoped enabler agent | Evaluates prohibited-subject, refusal, routing, and safety evidence; does not sign the human assessment. | WP-5 |
| Audit and Diagnostics Specialist | Trace Collector | `.github/agents/trace-collector.md` | Local/task-scoped specialist agent | Produces auditable evidence references while preserving audit/diagnostic separation. | WP-6 |
| Performance and Availability Analyst | QEI Engineer | `.github/agents/qei-engineer.md` | Local/task-scoped specialist agent | Designs and reports quality-engineering measurement evidence while preserving source priorities. | WP-7 |
| Governance and Release Manager | Ops Chief | `.github/agents/ops-chief.md` | Background L1 lead agent | Coordinates governance and release-evidence assembly without assuming human approval authority. | WP-8 |
| Independent Security Reviewer | Security Reviewer | `.github/agents/security-reviewer.md` | Local/task-scoped reviewer agent | Independently challenges security evidence and escalates decisions to mandated human authorities. | WP-2, WP-4, WP-5, WP-6, WP-8 |
| Independent QA and IV&V Lead | Test Reviewer / Quality Auditor | `.github/agents/test-reviewer.md` | Local/task-scoped reviewer agent | Independently verifies scenario evidence, priorities, accessibility where applicable, and 39/39 convergence. | WP-1 through WP-8 |

## Work-Package Schedule

Stages and predecessor gates express sequence only. They are not dates or duration estimates. WP-1 remains both the opening acceptance authority and the convergence reference.

| Stage | WP | Owner | Predecessor Gates | Exit Gate and Independent Check | Risk |
| --- | --- | --- | --- | --- | --- |
| S0 | WP-1 Authority and Acceptance Spine | Program Manager | DEC-008 active; source features available | G1: 39 distinct scenario assertions, priorities, authority labels, OQs, and evidence-reuse rules frozen; Test Reviewer / Quality Auditor reviews and recommends acceptance to the Human Program Executive. | H |
| S1 | WP-2 Identity, Authorization, and Containment | Azure Principal Architect | G1 | G2: Security Reviewer recommends disposition of pre-retrieval authorization and containment evidence; the mandated human authority records acceptance before G2 is complete. | H |
| S1 | WP-3 Source Access, Freshness, Location, and Read-Only Integrity | API Architect | G1; OQ-01 before freshness acceptance | G3: agents prepare and review source-mode, location, read-only, and truthful-freshness evidence; the accountable human records OQ-01 and accepts the evidence before G3 is complete. | H |
| S2 | WP-4 Grounded Cited Answers and Uncertainty | Solution Architect | G2 and G3; WP-2 pre-retrieval authorization must precede retrieval/grounding/citation integration | G4: agents prepare and independently review grounded-answer, authorized-citation, and uncertainty evidence; the mandated human authority records acceptance before G4 is complete. | H |
| S2 | WP-5 Prohibition, Refusal, Routing, and Refusal Evidence | Responsible AI Specialist | G1; WP-6 audit-evidence contract available; OQ-02 before completion | G5: agents prepare and review refusal, routing, and refusal-specific evidence; the accountable human records OQ-02 and accepts the evidence before G5 is complete. | H |
| S1/S2 | WP-6 Audit, Diagnostic Separation, and Optional Feedback | Trace Collector | G1; refusal evidence contract coordinated with WP-5 | G6: agents independently demonstrate separate audit-retention and diagnostic-exclusion obligations; the mandated human authority records acceptance before G6 is complete; feedback remains Could. | H |
| S1/S3 | WP-7 Performance and Availability Evidence | QEI Engineer | G1 for measurement contract; representative human-accepted WP-4 path for measurement | G7: agents report Should-level response-time and availability evidence; the Human Program Executive records review before G7 is complete. | M |
| S1/S4 | WP-8 Governance, Release Evidence, and Convergence | Ops Chief | G1 for constraint inventory; OQ-03 before governance baseline; G2 through G7 before convergence | G8: agents assemble the governance baseline, independent reviews, release evidence, and WP-1 39/39 re-attestation; mandated human authorities record the required dispositions before G8 is complete, and no release authorization is granted. | H |

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
| Acceptance Spine | WP-1 | Program Manager | Immediately within this Phase 2 alternative | No dependent stream may alter scenario wording, priority, authority, or package scope. |
| Boundary Assurance | WP-2 | Azure Principal Architect | After G1 | G2 must close before WP-4 retrieval/grounding/citation integration. |
| Source Truth | WP-3 | API Architect | After G1 | Non-freshness evidence may proceed, but OQ-01 is required for freshness acceptance and WP-4 integration. |
| Answer Integrity | WP-4 | Solution Architect | Evidence design after G1; integration after G2 and G3 | Citations must remain inside the authorized set; uncertainty must not invent location or amendment facts. |
| Safety and Refusal | WP-5 | Responsible AI Specialist | Refusal design after G1 | OQ-02 and refusal-specific audit evidence are required before completion. |
| Audit and Diagnostics | WP-6 | Trace Collector | After G1 | Audit retention and diagnostic exclusion remain distinct evidence planes; WP-5 consumes the refusal-evidence contract. |
| Service Evidence | WP-7 | QEI Engineer | Measurement design after G1 | Measurement uses representative accepted behavior and retains Should priority. |
| Governance Convergence | WP-8 | Ops Chief | Constraint inventory after G1 | OQ-03 precedes baseline; G2 through G7 and independent reviews precede convergence. |

This retains WBS-D's dependency-safe concurrency, specialist ownership, independent gate review, and bounded early evidence design. Agent execution changes staffing only; it does not change stream membership, sequencing, or convergence.

## Milestones

Milestones are criteria-based and have no target dates.

| Milestone | Criteria |
| --- | --- |
| M1 — Acceptance Spine Frozen | The Human Program Executive records G1 acceptance after agents verify exactly 39 distinct assertions, preserved priorities, explicit source authority, OQ ownership, and no package-scope drift. |
| M2 — Human Critical Inputs Controlled | OQ-01, OQ-02, and OQ-03 each have named human owner roles, explicit blocked outcomes, and no agent- or specialist-invented disposition. |
| M3 — Authorization Boundary Accepted | The mandated human authority records G2 acceptance after independent agents recommend that authorization-before-retrieval evidence is sufficient and post-retrieval filtering is rejected as the control. |
| M4 — Source Truth Accepted | The accountable human records OQ-01 and G3 acceptance after agents evidence defined access modes, truthful freshness context, location integrity, and two distinct read-only assertions. |
| M5 — Answer and Safety Evidence Accepted | Mandated humans record G4 and G5 acceptance after agents review grounded authorized citations, uncertainty without invention, prohibited-subject refusal, routing, and refusal-specific evidence; OQ-02 is attached to G5. |
| M6 — Audit and Diagnostic Separation Accepted | The mandated human authority records G6 acceptance after agents independently demonstrate required retention and diagnostic payload exclusion; optional feedback remains Could. |
| M7 — Service Evidence Reported | The Human Program Executive records G7 review after agents report response-time and availability evidence as Should findings without priority promotion. |
| M8 — Governance Baseline and Convergence Accepted | The accountable human records OQ-03 before the governance baseline; mandated human authorities record G8 dispositions after agents re-attest WP-1, independent reviews, source-required governance, and all 39 scenarios without selecting or authorizing release. |

## OQ Critical Path

| OQ | Mandated Human Owner | Agent Preparation | Required Disposition | Blocks | Work Allowed While Pending |
| --- | --- | --- | --- | --- | --- |
| OQ-01 | Accountable human business owner | Business Owner agent prepares the evidence brief; Human Program Executive verifies authority and record. | Confirm the interpretation of an amendment loaded yesterday against nightly-export availability while preserving the prohibition on intra-day freshness claims. | WP-3 freshness acceptance and WP-4 integration. | WP-3 source-mode inventory, location/read-only evidence, WP-2, WP-5 refusal design, WP-6 separation design, WP-7 metric design, and WP-8 constraint inventory. |
| OQ-02 | Accountable human business owner | Business Owner agent prepares the routing and refusal-evidence brief; Human Program Executive verifies authority and record. | Confirm the accountable benefits-team destination and the required refusal-specific audit evidence interpretation. | WP-5 routing/refusal completion. | Refusal detection and wording, generic audit-retention design, and unrelated package evidence. |
| OQ-03 | Human governance authority, coordinated by the Human Program Executive | Ops Chief prepares the reconciliation brief; Human Program Executive verifies the mandated governance disposition. | Reconcile current GitHub tracking with authoritative Azure DevOps work-tracking and source-control constraints without replacing those constraints. | WP-8 governance baseline. | WP-1 through WP-7 evidence and WP-8 constraint inventory short of baseline. |

## Bounded Assumption-Challenge and Evidence Experiments

These are the same WBS-D evidence probes for OQs and high-uncertainty acceptance semantics. They may reject an interpretation or expose missing evidence. They cannot select a mechanism, product, topology, component, model, runtime, database, or index; add scope; alter priorities; or supply a human disposition.

| Experiment | Acceptance Question | Allowed Evidence Probe | Pass Condition | Failure Control |
| --- | --- | --- | --- | --- |
| EXP-AUTHZ | Can BR-03 be satisfied by retrieving broadly and filtering later? | Compare BR-03, DISC-02, and ARC-03 assertions. | Pre-retrieval authorization remains mandatory; retrieve-then-filter is rejected as the authorization control. | G2 stays open and WP-4 integration remains blocked. |
| EXP-CITE | Can a citation expose an identifier outside authorized scope? | Trace BR-02 citation fields against the already-authorized record set. | Every cited system and record identifier is authorized for the requester. | Citation evidence is rejected and G4 stays open. |
| EXP-FRESH | Does “loaded yesterday” imply availability before the nightly export? | Prepare an OQ-01 evidence brief comparing DISC-05, ARC-11, and ARC-13. | Human OQ-01 disposition is recorded and no intra-day freshness is claimed. | Freshness acceptance and WP-4 integration remain blocked. |
| EXP-LOC | May organization-level status be inferred across locations? | Challenge DISC-01, DISC-04, BR-08, and ARC-14 with ambiguous-location examples. | The addressed location is explicit; unsupported status or tier is not invented. | Ambiguous output is rejected as WP-4 evidence. |
| EXP-AUDIT | Can one undifferentiated record satisfy audit retention and diagnostic exclusion? | Compare BR-06 and DISC-03 retention with ARC-07 diagnostic exclusion. | Required audit evidence and payload-excluding diagnostics remain separately assertable. | G6 stays open; diagnostic evidence cannot close refusal-audit acceptance. |
| EXP-ROUTE | Does generic interaction retention complete DISC-03? | Prepare an OQ-02 brief distinguishing routing authority and refusal-specific evidence. | Human destination is confirmed and the refusal interaction has specific audit evidence. | WP-5 may prove refusal behavior but cannot claim completion. |
| EXP-GOV | May current GitHub use replace authoritative governance constraints? | Prepare an OQ-03 reconciliation brief against SOW-GOVERNANCE and ARC-08. | Human disposition preserves authoritative constraints and documents the relationship without substitution. | WP-8 constraint inventory may continue; governance baseline remains blocked. |

## Capability Gaps and Mitigation

These controls address AI staffing only. They do not alter WBS-D scope, sequence, gates, milestones, risk ratings, or source requirements.

| Work Package | AI Capability Gap | Mitigation and Stop Control |
| --- | --- | --- |
| WP-1 | Agents may normalize wording, merge similar assertions, or infer authority from context. | Program Manager maintains an exact source-keyed spine; Test Reviewer / Quality Auditor performs a 39-row diff. Any wording, priority, authority, or package-map drift keeps G1 open. |
| WP-2 | An architecture-oriented agent may turn a named constraint into a design selection or accept post-retrieval filtering. | Security Reviewer checks constraint-only language and pre-retrieval ordering. Human security/architecture authority is required for any actual security architecture decision. |
| WP-3 | Agents cannot know business meaning for freshness or location ambiguity without accountable human input. | OQ-01 remains blocked for human business-owner disposition; the API Architect may prepare evidence but cannot close freshness acceptance. |
| WP-4 | Generated answers and citations can sound authoritative despite unsupported or unauthorized claims. | Solution Architect evidence is tested against the accepted authorized set and source records; Security Reviewer and Test Reviewer / Quality Auditor reject unsupported or boundary-crossing output. |
| WP-5 | An agent may invent a routing destination or treat generic logging as refusal-specific evidence. | OQ-02 remains blocked for human business-owner disposition; Responsible AI Specialist cannot complete G5 without the recorded human answer and refusal-specific evidence. |
| WP-6 | Automated evidence assembly may conflate retained audit content with payload-excluding diagnostics. | Trace Collector maintains separate evidence planes; Security Reviewer recommends disposition on both obligations, and the mandated human authority records acceptance before G6 is complete. |
| WP-7 | An agent may optimize to a metric or silently promote Should requirements. | QEI Engineer reports methodology and findings only; Test Reviewer / Quality Auditor verifies BR-05, NFR-03, and ELAB-01 remain Should. |
| WP-8 | Governance agents may mistake prepared evidence for approval or infer resolution of tooling conflicts. | OQ-03 and every mandated security, responsible-AI, ATO, CAB, release, ADR, ring, and WBS authority remain human. Ops Chief assembles evidence only; G8 grants no release authority. |

## Human Review Checkpoints

| Checkpoint | Trigger | Mandated Human Authority and Required Action | Agent Boundary |
| --- | --- | --- | --- |
| HRC-1 — Acceptance Spine | Before G1 closes | Human Program Executive confirms the review packet is ready and no authority has been delegated by implication. | Agents prepare and independently review the spine; they cannot change source authority. |
| HRC-2 — OQ-01 | Before WP-3 freshness acceptance | Accountable human business owner dispositions amendment freshness; Human Program Executive verifies the record. | Business Owner and API Architect agents may recommend only. |
| HRC-3 — OQ-02 | Before WP-5 completion | Accountable human business owner confirms the benefits-team destination and refusal-specific evidence interpretation; Human Program Executive verifies the record. | Business Owner and Responsible AI Specialist agents may recommend only. |
| HRC-4 — OQ-03 | Before WP-8 governance baseline | Mandated human governance authority resolves the tracking/source-control relationship; Human Program Executive verifies the record. | Ops Chief may prepare reconciliation only. |
| HRC-5 — Security Architecture | Whenever security architecture is proposed or security evidence reaches a mandated approval point | Mandated human security/architecture authority reviews and decides; any ADR follows human ARB/PX authority. | Azure Principal Architect and Security Reviewer provide evidence and recommendations only. |
| HRC-6 — Responsible AI and ATO | Before any production-readiness claim | Mandated human responsible-AI and ATO authorities sign or reject their respective evidence. | Responsible AI Specialist and other agents cannot self-sign or substitute an assessment. |
| HRC-7 — Release | Before any release or production authorization | Mandated human change advisory, security, ATO, responsible-AI, and release authorities decide under source constraints. | Ops Chief assembles evidence; no agent authorizes release. |
| HRC-8 — ADR / Architecture Selection | Before accepting any architecture, product, topology, component, model, runtime, database, or index decision | Human Program Executive acting as mandated ARB/PX authority accepts, rejects, or returns the proposal. | Agents may compare options but cannot select or accept. |
| HRC-9 — Ring Gate | At every ring transition proposal | Mandated human ring-gate authority passes or fails the gate. | Agents prepare gate evidence; this WBS starts no ring. |
| HRC-10 — WBS Selection | After all five Phase 2 alternatives are presented | Human selection authority chooses, modifies, or rejects a WBS. | WBS-E remains NOT SELECTED until that decision. |

## Risks

The WBS-D risk set, likelihoods, impacts, and control intent are retained exactly. Active agents execute the named controls, while mandated human decisions remain human.

| Risk | Likelihood | Impact | Mitigation |
| --- | --- | --- | --- |
| WP-1 wording or priority drift across parallel streams | M | H | G1 freezes the spine; Test Reviewer / Quality Auditor compares every exit to the exact ledger and source priority. |
| Authorization is treated as post-retrieval filtering | L | H | EXP-AUTHZ plus Security Reviewer recommendation at G2; the mandated human authority retains acceptance and WP-4 remains blocked on failure. |
| Citation identifiers leak unauthorized records | M | H | EXP-CITE validates citations against the authorized set before G4. |
| Freshness is overstated or location context is misread | M | H | OQ-01, EXP-FRESH, EXP-LOC, and G3 precede WP-4 integration. |
| Refusal routing or evidence remains assumed | M | H | OQ-02 and EXP-ROUTE block G5 completion. |
| Audit retention and diagnostics are conflated | M | H | EXP-AUDIT and Security Reviewer recommendation at G6 preserve separate assertions; the mandated human authority retains acceptance. |
| Governance tooling conflict is silently resolved by convenience | M | H | OQ-03 and EXP-GOV block the WP-8 governance baseline. |
| Should/Could evidence becomes an unauthorized priority change | M | M | WP-1 priority lock and G6/G7 independent review reject promotion. |
| Specialist handoffs lose context | M | M | Program Manager maintains one evidence index and gate handoff against WP-1. |
| Named ARC standards are mistaken for selections | M | H | Every use is labeled and governed as an authoritative constraint only; architecture-neutrality review is part of G8. |

## Trade-offs

The inherited delivery trade-offs are the same as WBS-D:

- **Strengths:** Preserves dependency-safe concurrency, specialist and independent assurance, and bounded challenge of uncertain acceptance semantics. It gives high-risk controls clear ownership while keeping coordination concentrated around the acceptance spine and exit gates.
- **Weaknesses:** More roles and review formality than WBS-A; less exploratory overlap than WBS-C; more coordination than a single-threaded plan. Human OQ dispositions remain non-compressible blockers.
- **Best suited for:** A regulated, human-governed objective where authorization, freshness, location meaning, refusal evidence, and release governance need strong assurance without serializing all evidence preparation.
- **Deliberate compromise:** WBS-E does not maximize any single dimension. It accepts bounded specialist handoffs and bounded rework to avoid WBS-A's assurance gaps, WBS-B's pervasive coordination burden, and WBS-C's uncontrolled overlap.

The staffing-specific trade-off is that AI agents can prepare parallel evidence and maintain structured traceability, but they cannot supply accountable business judgment or mandated approvals. The human checkpoints therefore remain hard stops, not optional oversight.

## Architecture-Neutrality Statement

This WBS sequences agent responsibility, acceptance evidence, human authority, and review gates only. It does not select an architecture, product, topology, component, model, runtime, database, index, release method, or deployment approach.

Where source scenarios name Microsoft Entra ID, managed identity, United States Azure regions, the UHG tenant boundary, Microsoft Foundry hosted agents, Azure Key Vault with managed identity, Azure Monitor and Application Insights, Bicep through Azure DevOps pipelines, Azure DevOps Boards, Azure DevOps Repos, the UHG AI allowlist, or change advisory board approval, each name is an **authoritative ARC or SOW source constraint only**. Restatement is not selection.

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

**NOT SELECTED / human choice pending.** WBS-E is a Ring 0 Phase 2 comparison artifact only. Ring 1 has not started, no WBS has been selected, and no architecture, product, topology, component, model, runtime, database, index, cost, duration, release, or deployment commitment is made.