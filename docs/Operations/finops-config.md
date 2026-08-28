# AI FinOps Configuration

> Budget envelopes and cost governance for AI agent invocations.
> See `.github/skills/finops.md` for the full FinOps governance framework.
> Maintained by the **Program Manager**.

**Last Updated:** 2026-08-28

## Budget Envelopes

> Define per-ring and per-project token budgets. 100% consumed = HARD STOP.

| Scope | Budget (USD) | Consumed (USD) | % Used | Status |
|-------|-------------|----------------|--------|--------|
| Ring-0 | — | — | — | — |
| Ring-1 | — | — | — | — |
| Ring-2 | — | — | — | — |
| Ring-3 | — | — | — | — |
| Ring-4 | — | — | — | — |
| Ring-5 | — | — | — | — |

## Cost Thresholds

| Threshold | Value | Action |
|-----------|-------|--------|
| High-cost invocation | > $0.50 | STOP — present alternatives, wait for human approval |
| Budget warning | 80% consumed | Flag to PM |
| Budget hard stop | 100% consumed | HARD STOP — human must extend budget |

## Model Cost Tiers

| Tier | Models | Approx. Cost | Use For |
|------|--------|--------------|---------|
| Economy | GPT-4o-mini, Claude Haiku | Low | Routine tasks, formatting, simple queries |
| Standard | GPT-4o, Claude Sonnet | Medium | Code generation, reviews, analysis |
| Premium | o1, Claude Opus | High | Complex architecture, security review — justification required |

## Flags

- Large context windows (> 100K tokens)
- Uncached RAG calls
- Premium models for non-critical tasks
- No documented rationale from Model Selector

## Cost Allocation & Chargeback

> Required at Tier 3 for multi-project cost attribution.
> Maintained by the **Finance (CGFS) Enabler**.

| Project | Ring | Agent | Model | Tokens | Cost (USD) | Charged To |
|---------|------|-------|-------|--------|-----------|------------|
|         |      |       |       |        |           |            |

### Chargeback Rules

| Rule | Description |
|------|-------------|
| Direct attribution | Costs charged to the project that initiated the invocation |
| Shared services | Cross-cutting agent costs split proportionally by project usage |
| Enabler overhead | Enabler invocations charged to program overhead |
| Dispute process | Cost disputes escalated to Finance Enabler → PX |
