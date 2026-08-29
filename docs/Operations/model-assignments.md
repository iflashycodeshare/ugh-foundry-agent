# Model Assignment Log

> Tracks which AI models are assigned to which agent tasks and the rationale.
> Maintained by the **Model Selector** agent. Reviewed by PM for cost governance.
> See `.github/skills/finops.md` for cost tier requirements.

**Last Updated:** 2026-08-28

## Active Assignments

| Agent / Task | Assigned Model | Cost Tier | Rationale | Assigned Date | Reassigned From |
|-------------|----------------|-----------|-----------|---------------|-----------------|
| Phase 1 Producer A | Claude Opus 4.8 | High | Frontier depth and structured decomposition | 2026-08-28 | - |
| Phase 1 Producer B | GPT-5.6 Sol | High | Independent planning and evidence-oriented reasoning | 2026-08-28 | - |
| Phase 1 Producer C | Grok 4.6 | High | Distinct model family and obligation-oriented decomposition | 2026-08-28 | Gemini 3.1 Pro Preview |
| Comparison Matrix | GPT-5.6 Terra | High | Cross-option synthesis without producer-file mutation | 2026-08-28 | - |
| Plan Review | Claude Sonnet 5 | Medium | Independent feasibility, completeness, and traceability review | 2026-08-28 | - |
| Architecture Review | GPT-5.5 | High | Independent boundary and authoritative-constraint review | 2026-08-28 | - |

## Assignment History

| Date | Agent / Task | Previous Model | New Model | Reason for Change |
|------|-------------|----------------|-----------|-------------------|
| 2026-08-28 | Phase 1 Producer C | Gemini 3.1 Pro Preview | Grok 4.6 | Required artifact was not persisted; returned proposal breached architecture neutrality and lacked complete scenario traceability. See DEC-007. |
