# Governance Forums Protocol

> Defines standing governance bodies, meeting cadence, and escalation paths.
> Required at Tier 3 for CAB/steering committee coordination.
> Maintained by the **Ops Chief**.

**Last Updated:** 2026-08-28

## Standing Forums

| Forum | Purpose | Chair | Cadence | Quorum | Artifacts |
|-------|---------|-------|---------|--------|-----------|
| Change Advisory Board (CAB) | Review and approve change requests | Ops Chief | Weekly | PM + Ops Chief + 1 Enabler | CR decisions, change log |
| Architecture Review Board (ARB) | Evaluate ADRs and architecture changes | PX | Bi-weekly | PX + Architect + Solution Architect | ADR approvals, review findings |
| Program Steering Committee | Strategic direction and risk escalation | PX | Bi-weekly | PX + PM + Ops Chief | Program status, risk register |
| Security Review Board | Security posture and ATO readiness | Security Enabler | Monthly | Security + Ops Chief + PM | Security findings, ATO status |

## Escalation Paths

| From | To | Trigger | SLA |
|------|----|---------|-----|
| Team Lead | Project Lead | Blocker unresolved > 1 session | Same session |
| Project Lead | PM | Cross-project dependency issue | Next session |
| PM | PX | Risk score ≥ 15 or budget threshold breach | Immediate |
| Ops Chief | PX | Change request with program-wide impact | Next CAB or immediate if critical |
| Any Enabler | PX | Compliance finding rated CRITICAL | Immediate |

## Forum Records

| Date | Forum | Attendees | Key Decisions | Action Items |
|------|-------|-----------|---------------|--------------|
|      |       |           |               |              |
