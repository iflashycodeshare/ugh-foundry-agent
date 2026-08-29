# WBS-A Speed and Lean Execution

**Date:** 2026-08-28  
**Phase:** Ring 0 brainstorm Phase 2  
**Variant:** WBS-A - Speed and lean execution  
**Staffing model:** Human-staffed, lean multi-hat roster  
**Based on decomposition:** DEC-008 Candidate Hybrid selected at DP-4  
**Status:** Draft WBS alternative for review. Not selected. Ring 1 not started.

## Scope Guard

This artifact creates only the WBS-A human-staffed speed/lean variant from DEC-008 and the Candidate Hybrid. It does not select a WBS, start Ring 1, update status artifacts, estimate cost, estimate duration, or make architecture, product, topology, component, model, runtime, database, index, release, or deployment choices.

Named ARC standards are authoritative source constraints only. They are not implementation selections in this WBS.

The shared scope is fixed and contains exactly these work packages:

| WP | Work Package |
| --- | --- |
| WP-1 | Authority and Acceptance Spine |
| WP-2 | Identity, Authorization, and Containment |
| WP-3 | Source Access, Freshness, Location, and Read-Only Integrity |
| WP-4 | Grounded Cited Answers and Uncertainty |
| WP-5 | Prohibition, Refusal, Routing, and Refusal Evidence |
| WP-6 | Audit, Diagnostic Separation, and Optional Feedback |
| WP-7 | Performance and Availability Evidence |
| WP-8 | Governance, Release Evidence, and Convergence |

## Staffing Roster

Lean staffing uses the smallest credible human team while preserving required authority, security, validation, and governance separation. Role names are human roles only; no individual people are assigned.

| Human Role | Mode | Work Packages | Speed/Lean Multi-Hat Notes |
| --- | --- | --- | --- |
| Program Executive / Decision Authority | Govern / approve human inputs | WP-1, WP-8; OQ-01, OQ-02, OQ-03 | Owns authority checkpoints and prevents Phase 2 from becoming Ring 1 execution. |
| Delivery Lead / Business Analyst | Lead / integrate | WP-1, WP-3, WP-4, WP-5, WP-8 | Maintains the acceptance spine, source scenario traceability, and convergence package. |
| Architecture and Engineering Lead | Define evidence path / coordinate build planning | WP-2, WP-3, WP-4, WP-7 | Keeps sequencing dependency-safe without choosing architecture, topology, runtime, model, database, or index. |
| Security, Compliance, and Responsible AI Lead | Control review / gate evidence | WP-2, WP-5, WP-6, WP-8 | Covers identity, containment, diagnostic separation, prohibited use, release evidence, and AI governance constraints. |
| IV&V and Quality Lead | Independent validation / evidence review | WP-1, WP-4, WP-5, WP-6, WP-7, WP-8 | Preserves independent acceptance and 39/39 scenario proof despite lean staffing. |

## Work-Package Schedule

Sequence stages are dependency gates, not dates, weeks, or duration estimates.

| Stage | WP | Owner Role | Predecessor Gates | Ring Placement | Lean Risk |
| --- | --- | --- | --- | --- | --- |
| S0 | WP-1 Authority and Acceptance Spine | Delivery Lead / Business Analyst with Program Executive / Decision Authority | DEC-008 active; 39-scenario baseline available | Ring 0 Phase 2 input to Ring 1 planning | High if rushed; it controls all later evidence. |
| S1 | WP-2 Identity, Authorization, and Containment | Architecture and Engineering Lead with Security, Compliance, and Responsible AI Lead | WP-1 acceptance spine established | Ring 1 planning predecessor to Ring 2 execution | High; pre-retrieval authorization is a hard predecessor to WP-4 integration. |
| S1 | WP-3 Source Access, Freshness, Location, and Read-Only Integrity | Delivery Lead / Business Analyst with Architecture and Engineering Lead | WP-1 acceptance spine; OQ-01 before freshness acceptance | Ring 1 planning predecessor to Ring 2 execution | High until OQ-01 is resolved. |
| S2 | WP-4 Grounded Cited Answers and Uncertainty | Architecture and Engineering Lead with Delivery Lead / Business Analyst | WP-2 pre-retrieval authorization complete; WP-3 source/location/freshness basis complete; OQ-01 before integration | Ring 2 planning/execution candidate | High; citation and uncertainty cannot outrun authorization or freshness truth. |
| S2 | WP-5 Prohibition, Refusal, Routing, and Refusal Evidence | Security, Compliance, and Responsible AI Lead with Delivery Lead / Business Analyst | WP-1 acceptance spine; OQ-02 before routing/refusal completion | Ring 2 planning/execution candidate | Medium; route ownership and refusal evidence are human-owned inputs. |
| S2 | WP-6 Audit, Diagnostic Separation, and Optional Feedback | Security, Compliance, and Responsible AI Lead with IV&V and Quality Lead | WP-1 acceptance spine; WP-5 refusal evidence shape for refusal interactions | Ring 2 planning/execution candidate | Medium; Could feedback can be staged, but required audit and diagnostic controls cannot. |
| S3 | WP-7 Performance and Availability Evidence | Architecture and Engineering Lead with IV&V and Quality Lead | WP-4 answer path defined; WP-6 measurement and evidence boundaries defined | Ring 3 validation candidate | Medium; Should metrics may be measured without becoming Must release scope. |
| S4 | WP-8 Governance, Release Evidence, and Convergence | Program Executive / Decision Authority with Delivery Lead / Business Analyst and IV&V and Quality Lead | OQ-03 before governance baseline; WP-1 through WP-7 evidence ready for convergence | Ring 3+ gate evidence candidate | High; source-required governance and documentation cannot be deferred. |

## Parallel Streams

| Stream | Work Packages | Lead Role | Can Start | Convergence Rule |
| --- | --- | --- | --- | --- |
| Acceptance Spine | WP-1 | Delivery Lead / Business Analyst | Immediately in Phase 2 | Freezes scenario ledger and acceptance language before dependent streams claim completion. |
| Boundary Controls | WP-2, WP-6 | Security, Compliance, and Responsible AI Lead | After WP-1 acceptance spine | WP-2 must clear before WP-4 retrieval/grounding/citation integration. |
| Source Truth | WP-3 | Delivery Lead / Business Analyst | After WP-1 acceptance spine | OQ-01 must be resolved before freshness acceptance and WP-4 integration. |
| Answer Behavior | WP-4, WP-7 | Architecture and Engineering Lead | WP-4 after WP-2 and WP-3 gates; WP-7 after WP-4 evidence path | Must preserve citations, uncertainty, response-time measurement, and availability evidence without architecture choices. |
| Safety and Refusal | WP-5 | Security, Compliance, and Responsible AI Lead | After WP-1 acceptance spine | OQ-02 must be resolved before routing/refusal completion. |
| Governance Convergence | WP-8 | Program Executive / Decision Authority | After OQ-03 and evidence readiness from WP-1 through WP-7 | No source-required governance, documentation, security, Responsible AI, ATO, CAB, or rollback evidence is deferred. |

## Milestone Sequence

Milestones are criteria-based only. They contain no target dates.

| Milestone | Criteria |
| --- | --- |
| M1 Acceptance Spine Ready | WP-1 contains the frozen 39-scenario traceability ledger, source priorities, acceptance boundaries, and no added/removed scope. |
| M2 Human Critical Inputs Dispositioned | OQ-01, OQ-02, and OQ-03 each have accountable human disposition before the dependent completion criteria that require them. |
| M3 Boundary Controls Ready for Answer Integration | WP-2 confirms identity, authorization, tenant, residency, credential, and model-governance constraints as acceptance conditions before WP-4 retrieval/grounding/citation integration. |
| M4 Source Truth Ready for Grounding | WP-3 confirms approved source modes, location-level interpretation, amendment freshness limitations, and read-only integrity. |
| M5 Answer and Safety Behaviors Evidence-Ready | WP-4 and WP-5 have grounded answer, citation, uncertainty, prohibited-topic refusal, routing, and refusal-evidence criteria ready for validation. |
| M6 Audit, Diagnostics, and Optional Feedback Evidence-Ready | WP-6 distinguishes required audit retention from diagnostic exclusion and stages only Could feedback realization if needed. |
| M7 Measurement Evidence Ready | WP-7 covers Should response-time and availability evidence without promoting Should scenarios to Must. |
| M8 Convergence Package Ready for Human WBS Comparison | WP-8 confirms release evidence, governance constraints, IV&V readiness, and 39/39 source scenario attestation for WBS comparison only. |

## OQ Critical-Path Table

| OQ | Human Input Needed | Critical-Path Dependency | Completion Blocked Until Disposition |
| --- | --- | --- | --- |
| OQ-01 | Confirm interpretation of an amendment loaded yesterday against nightly-export availability while preserving the prohibition on intra-day freshness claims. | WP-3 freshness acceptance; WP-4 integration | WP-3 cannot complete freshness acceptance; WP-4 cannot integrate amendment-grounded answers. |
| OQ-02 | Confirm accountable benefits-team destination and refusal-specific audit evidence expectations. | WP-5 routing/refusal completion | WP-5 cannot complete refusal routing or refusal-evidence criteria. |
| OQ-03 | Reconcile current GitHub tracking with authoritative Azure DevOps work-tracking and source-control constraints. | WP-8 governance baseline | WP-8 cannot complete governance baseline or release evidence convergence. |

## Risks

| Risk | Lean Exposure | Mitigation in WBS-A |
| --- | --- | --- |
| Acceptance drift from fast sequencing | High | WP-1 remains the first gate and owns the 39-scenario ledger before dependent work claims completion. |
| Authorization integrated too late | High | WP-2 pre-retrieval authorization is a hard predecessor to WP-4 retrieval, grounding, and citation integration. |
| Freshness ambiguity causes misleading answers | High | OQ-01 blocks WP-3 freshness acceptance and WP-4 amendment integration. |
| Refusal routing remains unresolved | Medium | OQ-02 blocks WP-5 routing/refusal completion. |
| Governance tooling conflict is deferred | High | OQ-03 blocks WP-8 governance baseline. |
| Lean multi-hatting weakens independent evidence review | Medium | IV&V and Quality Lead remains distinct and reviews scenario coverage, negative behavior, measurement, and release evidence. |
| Should/Could staging is mistaken for priority change | Medium | Source priority statement preserves Must/Should/Could/Constraint semantics; only Should/Could realization depth can be staged where source permits. |
| Required documentation is treated as polish | High | WP-8 explicitly blocks convergence unless source/gate-required documentation and evidence are present. |

## Trade-offs

**Strengths of this WBS:** Small human roster, early authority spine, fast dependency-safe parallelism, explicit human critical-path inputs, and evidence reuse without collapsing source scenario assertions.

**Weaknesses of this WBS:** Higher coordination pressure, greater reliance on strong WP-1 discipline, limited specialization, and less slack for late human dispositions.

**Best suited for:** Earliest credible planning convergence where source-required governance, security, acceptance, and documentation are still preserved.

**Deferral discipline:** No governance or source/gate-required documentation is deferred. Only Should/Could realization depth can be staged, and priority remains unchanged.

## Architecture-Neutrality Statement

This WBS is architecture-neutral. It does not choose an implementation architecture, product, topology, component, model, runtime, database, index, release method, or deployment path. References to Microsoft Entra ID, managed identity, Microsoft Foundry hosted agents, Azure Key Vault with managed identity, Azure Monitor and Application Insights, Bicep through Azure DevOps pipelines, Azure DevOps Boards, Azure DevOps Repos, United States Azure regions, and the UHG AI allowlist appear only because the ARC source scenarios name them as authoritative constraints.

## Source Priority Statement

Source priorities are preserved exactly as planning priorities: Must scenarios remain Must, Should scenarios remain Should, Could scenarios remain Could, and ARC plus explicit scope/governance/acceptance scenarios are treated as Constraints. DISC scenarios retain their discovered priority tags. ELAB-01 remains a Should refinement of response-time measurement. ARC-08 is counted as one Scenario Outline, not as multiple rows.

## Scenario Traceability Ledger

Each source scenario appears exactly once as a primary row. Total attestation: 39/39.

| Source ID | Exact Scenario Title | Priority | WP | Treatment |
| --- | --- | --- | --- | --- |
| BR-01 | Return a grounded answer to an in-scope provider-network question | Must | WP-4 | Grounded answer behavior with approved-source support. |
| BR-02 | Cite every factual claim | Must | WP-4 | Citation criteria for every factual provider-network claim. |
| BR-03 | Restrict results to the analyst business unit | Must | WP-2 | Business-unit authorization boundary before answer delivery. |
| BR-04 | Refuse a coverage-determination question | Must | WP-5 | Prohibited coverage-determination refusal behavior. |
| BR-05 | Meet the response-time objective | Should | WP-7 | Response-time measurement evidence; Should priority preserved. |
| BR-06 | Retain query and response records | Must | WP-6 | Seven-year audit retention for query and response records. |
| BR-07 | Rate answer quality inline | Could | WP-6 | Optional feedback capability; may be staged without priority change. |
| BR-08 | State uncertainty when no answer is found | Must | WP-4 | No-answer uncertainty statement and no guessing. |
| NFR-01 | Keep processing in United States regions | Must | WP-2 | United States processing and storage containment criterion. |
| NFR-02 | Keep provider and member data within the UHG tenant | Must | WP-2 | UHG tenant-boundary containment criterion. |
| NFR-03 | Meet business-hours availability target | Should | WP-7 | Availability measurement evidence; Should priority preserved. |
| NFR-04 | Require responsible AI assessment before production | Must | WP-8 | Responsible AI assessment release evidence. |
| NFR-05 | Require security review and ATO before go-live | Must | WP-8 | Security review and ATO release evidence. |
| SOW-SCOPE-READONLY | Do not write to a system of record | Constraint | WP-3 | Read-only integrity across systems of record. |
| SOW-SCOPE-PROHIBITED | Exclude prohibited subject matter | Constraint | WP-5 | Prohibited subject exclusion and refusal behavior. |
| SOW-ACCEPTANCE | Enforce contractual release acceptance conditions | Constraint | WP-8 | IV&V, Responsible AI, and ATO acceptance evidence. |
| SOW-GOVERNANCE | Use required delivery governance constraints | Constraint | WP-8 | Azure DevOps work tracking, CAB approval, and model allowlist constraints as source requirements. |
| DISC-01 | Answer contract status at the identified location | Must | WP-3 | Location-level answer context and no group-to-location inference. |
| DISC-02 | Authorize before retrieving business-unit data | Must | WP-2 | Query-time authorization before retrieval; no post-retrieval filtering control. |
| DISC-03 | Refuse, route, and log a coverage-determination request | Must | WP-5 | Refusal routing and audit evidence; OQ-02 critical path. |
| DISC-04 | State record-specific uncertainty without inventing an answer | Must | WP-4 | Location-specific missing-record uncertainty and no invented status/tier. |
| DISC-05 | Surface the known amendment freshness limitation | Must | WP-3 | Amendment freshness context; OQ-01 critical path. |
| ELAB-01 | Measure operational response-time expectation | Should | WP-7 | Stakeholder response-time reference measurement; Should priority preserved. |
| DISC-06 | Capture detailed optional negative feedback | Could | WP-6 | Optional negative rating/comment feedback; Could priority preserved. |
| DISC-SCOPE-READONLY | Keep the first release read only | Constraint | WP-3 | First-release read-only behavior for contract and provider-network records. |
| ARC-01 | Accept Microsoft Entra ID only | Constraint | WP-2 | Identity provider constraint. |
| ARC-02 | Disallow static application credentials | Constraint | WP-2 | Managed-identity and no static credential constraint. |
| ARC-03 | Evaluate authorization before retrieval | Constraint | WP-2 | Pre-retrieval authorization constraint and WP-4 predecessor. |
| ARC-04 | Keep processing and storage in United States Azure regions | Constraint | WP-2 | United States Azure region containment constraint. |
| ARC-05 | Prevent customer data from leaving the tenant | Constraint | WP-2 | Tenant-boundary data exchange constraint. |
| ARC-06 | Prohibit training and fine tuning on customer data | Constraint | WP-2 | Customer-data training and fine-tuning prohibition. |
| ARC-07 | Exclude provider payloads from diagnostic logging | Constraint | WP-6 | Diagnostic logging exclusion for provider-data payloads. |
| ARC-08 | Use the approved platform service for each capability | Constraint | WP-8 | Approved-standard constraint only; no architecture selection by WBS. |
| ARC-09 | Restrict model use to the approved allowlist | Constraint | WP-8 | UHG AI allowlist governance constraint. |
| ARC-10 | Govern a model version change | Constraint | WP-8 | CAB approval and documented evaluation baseline for model-version changes. |
| ARC-11 | Access all approved data sources using their defined modes | Constraint | WP-3 | Approved source access modes, including nightly amendment export. |
| ARC-12 | Enforce all production release gates | Constraint | WP-8 | Security, Responsible AI, accepted ATO, CAB, and rollback release-gate evidence. |
| ARC-13 | Do not claim intra-day amendment freshness | Constraint | WP-3 | Freshness truthfulness constraint for amendment information. |
| ARC-14 | Guard against location-level misinterpretation | Constraint | WP-3 | Location-level contract context preservation. |