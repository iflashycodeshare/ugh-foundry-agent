# Ring 0 Phase 2 WBS Comparison

**Date:** 2026-08-28  
**Decision context:** Human selection of a Phase 2 work-breakdown alternative  
**Based on:** DEC-008 Candidate Hybrid decomposition  
**Status:** **No option selected. Human choice is pending. Ring 1 has not started.**

## Review Set

- [WBS-A — Speed and Lean Execution](wbs-A-speed.md)
- [WBS-B — Depth, Quality & Risk Mitigation](wbs-B-depth.md)
- [WBS-C — Innovation, Parallelism & Creative Problem-Solving](wbs-C-innovation.md)
- [WBS-D — Combined Human Delivery Plan](wbs-D-combined.md)
- [WBS-E — AI-Agent-Staffed Combined Delivery Plan](wbs-E-ai-staffed.md)

## Fixed Basis for Comparison

DEC-008 fixes the Candidate Hybrid scope for every option. Each alternative uses the exact same eight packages: WP-1 Authority and Acceptance Spine; WP-2 Identity, Authorization, and Containment; WP-3 Source Access, Freshness, Location, and Read-Only Integrity; WP-4 Grounded Cited Answers and Uncertainty; WP-5 Prohibition, Refusal, Routing, and Refusal Evidence; WP-6 Audit, Diagnostic Separation, and Optional Feedback; WP-7 Performance and Availability Evidence; and WP-8 Governance, Release Evidence, and Convergence.

All five retain all 39 source scenarios as distinct primary assertions: 15 Must, 3 Should, 2 Could, and 19 Constraints. ARC-08 remains one Scenario Outline. No option adds, removes, splits, renames, silently collapses, or reprioritizes scope. The review evidence confirms all five cite all 39 source scenario identifiers.

The eight-package scope is identical, while staffing and sequencing differ by design. `SOW-ACCEPTANCE` is frozen in WP-1 and re-attested through WP-8 in B/D/E, while A/C place its primary ledger row in WP-8; both treatments preserve the acceptance-spine-to-release-convergence boundary. `DISC-04` is consistently homed in WP-4 across the corrected set.

All five also preserve the DEC-008 critical controls:

- WP-1 is the acceptance and traceability anchor.
- Authorization is evaluated before retrieval; WP-2 must precede WP-4 grounding and citation integration.
- OQ-01 is a human/business disposition that blocks WP-3 freshness acceptance and WP-4 integration.
- OQ-02 is a human/business disposition that blocks WP-5 routing and refusal-evidence completion.
- OQ-03 is a human/governance disposition that blocks the WP-8 governance baseline.
- Named platform services and controls remain authoritative source constraints, not architecture, product, topology, component, model, runtime, database, or index selections.

## Side-by-Side Summary

| Option | Staffing shape | Sequencing and parallelism | Separation of duties | Quality and risk depth | Best-suited context |
| --- | --- | --- | --- | --- | --- |
| A | Lean human multi-hat team, with distinct IV&V/quality role | Broad dependency-safe streams after WP-1; compact convergence | Preserved, but some delivery coordination and execution roles overlap | Core controls and critical paths are explicit; less specialist depth and slack | Earliest credible planning convergence with a small human roster and strong discipline |
| B | Fully specialized human roles with independent QA, security, governance, and IV&V reviewers | Deliberately bounded paired streams with formal exit checks | Strongest human execution-versus-review separation | Deepest gate, fallback, audit, and contingency posture | Regulated work where assurance and auditability outweigh coordination overhead |
| C | Cross-functional human evidence pods and a challenge council | Maximum controlled overlap, hidden parallelism, and bounded evidence experiments | Shared ownership and challenge roles intentionally overlap | Strong early challenge of semantic, freshness, routing, citation, and logging tensions | Ambiguous or novel requirements where learning before integration is valuable |
| D | Optimized human specialist team; multi-hatting limited to low-risk coordination | Safe concurrency plus bounded early evidence design | Specialist execution, security review, and QA/IV&V remain separate | Combines formal assurance with targeted evidence probes and explicit handoffs | Regulated, human-governed work needing assurance without fully serializing preparation |
| E | WBS-D mirror staffed by mapped AI agents; Program Executive remains standing human top role | Exact WBS-D sequence, dependencies, streams, milestones, and gates | Agent review can challenge agent work, but mandated human approvals remain external hard stops | D's risk controls plus explicit AI capability-gap controls and human review checkpoints | Work where agents can prepare structured evidence while humans retain all accountable judgments and approvals |

## Comparative Evidence

### Staffing, Coordination, and Separation of Duties

**A** minimizes the standing human roster through intentional multi-hatting. Its strength is a compact coordination surface; its exposure is concentration of dependency management and evidence interpretation in fewer roles. It retains a distinct IV&V and Quality Lead, but its lean structure has less specialist slack when an OQ or control review needs rework.

**B** assigns dedicated execution ownership to every work package and keeps QA, security, responsible-AI/governance audit, and IV&V independent of execution. This is the clearest separation-of-duties model. Its principal weakness is more handoffs and a larger coordination surface, even though named ownership and fixed gates constrain that exposure.

**C** deliberately uses overlapping human pods and an Assumption Challenge Council. Cross-pollination is its differentiator: it creates more chances to expose hidden assumptions before integration. The trade-off is intentional overlap, evidence discard, and rework risk; clear single-point accountability is weaker than B or D.

**D** takes A's limited coordination multi-hatting while keeping specialist execution ownership and independent security plus QA/IV&V review. It concentrates traceability and convergence coordination in one role without allowing that role to execute or independently approve specialist controls. This balances separation with fewer handoffs than B.

**E** retains D's organizational boundaries in the plan, but operational separation is qualified by the nature of agent staffing. Agents prepare, execute bounded analysis, assemble evidence, and perform advisory review. They cannot grant accountable approval, self-certify mandated human decisions, or convert a recommendation into a gate pass. Human review checkpoints compensate for this boundary but create hard dependency points outside the agent workflow.

### Quality, Risk, and Governance Feasibility

All options explicitly preserve authorization-before-grounding, the three human OQ critical paths, 39/39 traceability, distinct audit versus diagnostic assertions, and Must/Should/Could integrity. Their difference is the depth and formality of evidence challenge.

**A** is feasible where a lean team can protect the WP-1 spine and promptly obtain human dispositions. Its key risk is coordination pressure: an unresolved OQ or late control finding has less staffing redundancy to absorb it.

**B** has the strongest formal control posture. Independent review at every package exit and defined fallback behavior reduce the chance that a failed control quietly becomes a proceed decision. Its risk is governance and review overhead becoming a coordination burden rather than a quality benefit.

**C** has the strongest uncertainty-discovery posture. Its bounded experiments directly test unauthorized citation leakage, retrieve-then-filter errors, freshness overclaims, location inference, audit/diagnostic conflation, routing ambiguity, duplicate read-only assertions, and priority promotion. The same exploratory design creates the highest rework exposure and needs firm WP-1 control to prevent experiments from becoming covert selection or scope expansion.

**D** retains independent review and fallback discipline for consequential controls, then uses only bounded experiments where interpretation risk is material. It is governance-feasible when the organization can supply independent reviewers and the designated human authorities for OQ dispositions. Its risk is that the integrated model still depends on disciplined evidence handoffs between specialists.

**E** is governance-feasible only when human authorities remain responsive and actively exercise their non-delegable responsibilities. It adds explicit controls for agent tendencies to merge source assertions, infer business meanings, overstate unsupported answers, conflate audit and diagnostics, infer governance resolution, or treat prepared evidence as approval. The key risk is false completion: agent-prepared material can look complete before a human authority has made the necessary disposition.

### OQ and Authorization Critical-Path Treatment

Every option treats OQ-01, OQ-02, and OQ-03 as non-default human decisions. All allow bounded preparatory work while the relevant disposition is pending, but none permits freshness acceptance, routing/refusal completion, or governance-baseline completion to proceed by assumption.

The material difference is how work is organized around those waiting points. **A** relies on lean stream coordination. **B** holds formal gate exits and records fallback postures. **C** maximizes preparatory investigation and assumption challenge around the blocked outcomes. **D** uses C-style evidence probes only where they strengthen a defined gate. **E** maps D's same controls to agents, with agents preparing OQ briefs and humans retaining disposition authority.

All five make pre-retrieval authorization a hard predecessor to WP-4 integration. C and D make the associated citation-boundary challenge especially explicit; E inherits that exact probe and adds the risk that agent-generated answers may sound supported even when the evidence is not authorized or sufficient.

### Traceability, Priority, and Architecture Neutrality

Each option attests to 39/39 traceability and distinct scenario assertions, including the separate read-only scenarios and ARC-08 as one Scenario Outline. All five label ARC scenarios as authoritative Constraints in their ledgers and preserve the 15 Must / 3 Should / 2 Could / 19 Constraint source taxonomy.

Each option states that its staffing, evidence, and sequencing language is architecture-neutral. The options do not select an architecture, product, topology, component, model, runtime, database, or index. References to named services and controls are restatements of source constraints only.

## Strengths, Weaknesses, and Differentiators

| Option | Strengths | Weaknesses and key risks | Unique differentiator |
| --- | --- | --- | --- |
| A | Small human roster; clear early acceptance spine; dependency-safe concurrency; direct OQ blocking | High coordination pressure; limited specialization; reduced tolerance for late disposition or control rework | Leanest human operating shape without removing source-required governance or evidence |
| B | Dedicated ownership; strongest independent review; formal fallback at each exit; highest separation of duties | Largest role and handoff surface; reviews can slow movement between stages | Most explicit independent assurance and contingency posture |
| C | Broadest controlled parallelism; strongest structured challenge of ambiguous semantics; experiments expose hidden assumptions early | Highest overlap and rework exposure; pod coordination can blur accountability | Assumption Challenge Council and bounded evidence experiments |
| D | Explicit synthesis of A speed, B assurance, and C probes; clear ownership with focused coordination; strong hard-gate discipline | More coordination and formality than A; less exploratory capacity than C; depends on clean specialist handoffs | Deliberate mitigation of each source option's downside, documented in the combined rationale |
| E | Exact D scope and sequence; named agent-role mapping; structured parallel evidence preparation; explicit gap mitigations | Agents cannot supply accountable business judgment or approvals; risk of inferred authority, unsupported confidence, or false completion; human checkpoints can block progress | Complete human-versus-agent boundary, capability-gap register, and human review checkpoint set |

## WBS-E Human and Agent Boundary

**Roles that remain human:**

- The standing top role: **Program Executive**.
- The accountable human business owner for OQ-01 and OQ-02 dispositions.
- The human governance authority for OQ-03.
- Mandated human security and architecture decision authorities.
- Responsible-AI assessment, ATO, change-advisory, release, ADR/ARB, ring-gate, and final WBS-selection authorities.

**Roles staffed by agents:** Business Owner agent; Program Manager; Azure Principal Architect; API Architect; Solution Architect; Responsible AI Specialist; Trace Collector; QEI Engineer; Ops Chief; Security Reviewer; and Test Reviewer / Quality Auditor. These agents prepare briefs and evidence, execute bounded analysis, coordinate artifacts, and provide advisory review within the WBS-E plan.

**Capability gaps:** Agents may merge or normalize scenario wording, infer missing business meanings, treat post-retrieval filtering as acceptable, overstate unsupported or unauthorized answers, invent a routing destination, conflate audit retention with payload-excluding diagnostics, optimize away Should/Could priority boundaries, or mistake evidence assembly for governance approval. WBS-E mitigates these through the exact-source G1 spine, independent agent review, explicit stop controls, and human review checkpoints. Those mitigations do not make agents substitutes for the retained human authorities.

## Non-Binding Advisory

No option is selected by this comparison. For a human-governed regulated objective, **D is a non-binding advisory baseline** because it maintains the strongest common controls while avoiding B's continuous review burden and C's broader rework exposure. **B** is the stronger alternative when independent assurance and formal fallback controls are the dominant concern. **C** is the stronger alternative when unresolved semantic uncertainty warrants extensive structured challenge before integration. **A** is appropriate only when a lean human team can reliably sustain the acceptance spine and rapid human dispositions. **E** should be considered only where the organization explicitly accepts agent-supported preparation while preserving every listed human checkpoint as a hard authority boundary.

This advisory does not approve, rank by numerical score, or select a WBS. It does not start Ring 1 or authorize any architecture, product, topology, component, model, runtime, database, index, release, or deployment choice.

## Human Selection Required

**Please select WBS-A, WBS-B, WBS-C, WBS-D, WBS-E, or specify the modifications required before selection.**