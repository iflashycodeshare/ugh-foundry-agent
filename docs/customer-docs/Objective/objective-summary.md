# Objective Summary

**Objective:** Provide authenticated analysts with grounded, cited, read-only answers to provider-network questions while enforcing contractual, regulatory, and UHG platform boundaries.

## Requirements

| ID | Requirement | Exact source path | Priority | Feature / scenario |
| --- | --- | --- | --- | --- |
| BR-01 | Grounded natural-language answer | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Return a grounded answer to an in-scope provider-network question |
| BR-02 | Cite source system and record for every factual claim | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Cite every factual claim |
| BR-03 | Restrict results to authorized business unit | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Restrict results to the analyst business unit |
| BR-04 | Refuse coverage-determination questions and route them | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Refuse a coverage-determination question |
| BR-05 | Median response under 6 seconds | `docs/customer-docs/Objective/statement-of-work.md` | Should | `Objective-statement-of-work.feature` / Meet the response-time objective |
| BR-06 | Retain queries and responses for seven years | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Retain query and response records |
| BR-07 | Inline answer-quality rating | `docs/customer-docs/Objective/statement-of-work.md` | Could | `Objective-statement-of-work.feature` / Rate answer quality inline |
| BR-08 | State uncertainty rather than guess | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / State uncertainty when no answer is found |
| NFR-01 | US data residency | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Keep processing in United States regions |
| NFR-02 | UHG tenant data boundary | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Keep provider and member data within the UHG tenant |
| NFR-03 | 99.5 percent business-hours availability | `docs/customer-docs/Objective/statement-of-work.md` | Should | `Objective-statement-of-work.feature` / Meet business-hours availability target |
| NFR-04 | Responsible AI assessment before production | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Require responsible AI assessment before production |
| NFR-05 | Security review and ATO before go-live | `docs/customer-docs/Objective/statement-of-work.md` | Must | `Objective-statement-of-work.feature` / Require security review and ATO before go-live |

## Newly Discovered Transcript Requirements

These requirements are **NEWLY DISCOVERED** because the stated detail is absent from the SOW wording or capability. They do not amend contractual scope. Platform corroboration does not remove their transcript-only status. Priorities are discovery assessments, not contractual designations.

| ID | Requirement | Absent from SOW evidence | Platform corroboration | Priority | Disposition / open question |
| --- | --- | --- | --- | --- | --- |
| DISC-01 | Answer at location level and explicitly identify the location; do not apply group status to every location. | BR-01 requires a grounded answer but does not state location granularity or identification. | Yes: `platform-constraints.md` Known Risks calls location status the most likely error source. | Must | Capture as a safety-critical refinement of BR-01; confirmation of source-field sufficiency is pending. |
| DISC-02 | Evaluate business-unit authorization at query time before retrieval. | BR-03 requires authorized-business-unit results but does not prescribe pre-retrieval evaluation. | Yes: `platform-constraints.md` Identity and Access explicitly prohibits post-retrieval filtering. | Must | Constraint/refinement of BR-03; retain as discovery delta. |
| DISC-03 | Route refusals specifically to the benefits team and retain refusal-specific audit evidence. | BR-04 requires refusal and routing without naming the benefits team; BR-06 retains queries/responses but does not explicitly require refusal-event evidence. | No. | Must | Clarify whether standard BR-06 retention satisfies the requested refusal-evidence record. |
| DISC-04 | Identify missing amendment evidence for the specific location rather than invent a status or tier. | BR-08 requires uncertainty rather than guessing but not location/amendment-specific wording. | No. | Must | Refinement of BR-08; verify feasible source-level wording in later design. |
| DISC-05 | Yesterday's amendment must be reflected, with clear freshness context. | The SOW has no freshness requirement. | Yes: `platform-constraints.md` Data Sources and Known Risks define a nightly amendment export and intra-day limitation. | Must | **Conflict:** business expectation and nightly export must be agreed before gate readiness. |
| DISC-06 | Negative quality feedback may include a comment; it is not a day-one need. | BR-07 supports inline rating but does not specify comments or release timing. | No. | Could | Preserve SOW Could priority; do not promote to Must or first-release scope. |

## Transcript Elaborations of SOW Requirements

| ID | SOW link | Elaboration | Source | Priority | Feature / scenario |
| --- | --- | --- | --- | --- | --- |
| ELAB-01 | BR-05 | Stakeholders view approximately 5 seconds as instant and may abandon the agent when responses exceed about 10 seconds; these are reference points, while the contractual target remains a median under 6 seconds. | `docs/customer-docs/transcripts/discovery-workshop-session-1.md` | Should | `Transcripts-discovery-workshop-session-1.feature` / Measure operational response-time expectation |

## Constraints

| ID | Constraint | Source | Impact |
| --- | --- | --- | --- |
| C-01 | Read-only; no writes to systems of record. | `docs/customer-docs/Objective/statement-of-work.md`; transcript | Excludes contract updates. |
| C-02 | Exclude member/patient clinical data, claims adjudication, and coverage determinations. | `docs/customer-docs/Objective/statement-of-work.md` | Defines prohibited requests. |
| C-03 | Entra-only identity; managed identity; no stored secrets or static bearer tokens. | `docs/customer-docs/Architecture-docs/platform-constraints.md` | Mandatory identity/access control boundary. |
| C-04 | Pre-retrieval business-unit authorization. | `docs/customer-docs/Architecture-docs/platform-constraints.md` | Post-retrieval filtering is not acceptable. |
| C-05 | US-only processing/storage; UHG tenant containment; no training/fine tuning; exclude provider payloads from diagnostics. | `docs/customer-docs/Architecture-docs/platform-constraints.md` | Data handling and observability boundary. |
| C-06 | Approved services, Azure DevOps delivery controls, UHG AI model allowlist, model-change baseline/CAB approval. | Both SOW and `docs/customer-docs/Architecture-docs/platform-constraints.md` | Constrains later planning and delivery. |
| C-07 | Four access modes: three read-only APIs and one nightly amendment export. | `docs/customer-docs/Architecture-docs/platform-constraints.md` | Limits data freshness and integration options. |
| C-08 | Production needs security/RAI/ATO/CAB/rollback gates. | `docs/customer-docs/Architecture-docs/platform-constraints.md` | Release-gate prerequisites only; no release is authorized. |

## Metrics

| ID | Metric | Target | Measurement method | Source |
| --- | --- | --- | --- | --- |
| M-01 | Median response time | Under 6 seconds | Representative response-time measurement | `docs/customer-docs/Objective/statement-of-work.md` BR-05 |
| M-02 | Availability | 99.5 percent in business hours | Agreed availability measurement period | `docs/customer-docs/Objective/statement-of-work.md` NFR-03 |
| M-03 | Current handling time | 18 minutes baseline | Operations baseline stated in SOW | `docs/customer-docs/Objective/statement-of-work.md` |
| M-04 | Repeat enquiries | Approximately 40 percent baseline | Operations baseline stated in SOW | `docs/customer-docs/Objective/statement-of-work.md` |

## Goals

| ID | Goal | Success criteria | Timeframe | Source |
| --- | --- | --- | --- | --- |
| G-01 | Reduce analyst handling time and improve answer consistency | Grounded, cited answers to in-scope enquiries | Engagement objective; no date supplied | `docs/customer-docs/Objective/statement-of-work.md` |
| G-02 | Prevent unsafe location, authorization, and coverage outcomes | Location-specific answers, pre-retrieval authorization, refusal/routing | First-release expectation; no date supplied | `docs/customer-docs/transcripts/discovery-workshop-session-1.md` |

## Issues / Open Questions

| ID | Issue | Severity | Impact | Status |
| --- | --- | --- | --- | --- |
| OQ-01 | Freshness conflict: discovery expects yesterday's amendments reflected; the amendment register is a nightly export, so intra-day amendments are unavailable. | High | Can produce stale location-level answers and undermine trust. | Business agreement on freshness expectation is required. |
| OQ-02 | SOW says BR-04 routes prohibited questions, while platform constraints do not name the route owner. | Medium | Routing ownership and evidence detail remain unconfirmed. | Confirm benefits-team routing and refusal-log interpretation. |
| OQ-03 | Platform source-control/work-tracking standards name Azure DevOps while this Ring 0 package is tracked in GitHub Issue #1. | Medium | Governance-system alignment requires clarification before delivery planning. | Record as a Ring 1 planning/governance question; no change made. |

## Inclusion / Accessibility

No explicit accessibility, assistive-technology, affected-population, or fairness requirement was found in the three customer sources. WCAG 2.1 AA is a workspace policy and Ring 0/Ring 3 gate expectation, not a customer-stated requirement. Any user-facing surface must be assessed later without representing this as a contractual SOW requirement.

## Source Coverage

| Source | Extraction status | Feature | Coverage |
| --- | --- | --- | --- |
| `docs/customer-docs/Objective/statement-of-work.md` | Complete | `specs/features/Objective-statement-of-work.feature` | BR-01 through BR-08, NFR-01 through NFR-05, in/out scope, constraints, acceptance |
| `docs/customer-docs/transcripts/discovery-workshop-session-1.md` | Complete, paraphrased | `specs/features/Transcripts-discovery-workshop-session-1.feature` | Location, authorization, refusal/routing/logging, uncertainty, freshness, latency expectation, optional feedback, read-only |
| `docs/customer-docs/Architecture-docs/platform-constraints.md` | Complete | `specs/features/Architecture-docs-platform-constraints.feature` | Identity, data boundaries, services, model governance, sources, release gates, risks |

## Conversion Decisions

| Decision | User direction | Applied |
| --- | --- | --- |
| Corpus | Exhaustively ingest only the three named files. | Yes |
| Data handling | Generated narrative, summary, and features may be version controlled; paraphrase transcript attendees; no attendee quotations. | Yes |
| Source authority | SOW is contractual scope authority; transcript requirements absent from SOW are explicitly labeled NEWLY DISCOVERED; platform corroboration is separately recorded. | Yes |
| Scope boundary | Ring 0 requirements/governance only; no Ring 1, build work, ADR acceptance, or gate-pass claim. | Yes |
| Brainstorm | Customer documents make brainstorm mandatory. It is pending; no user decline is implied. | Yes |