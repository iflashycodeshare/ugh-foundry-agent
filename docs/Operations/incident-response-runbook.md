# Incident Response Runbook

> Template for documenting production incident response procedures.
> Required at Tier 3 per monitoring.md (incident response runbooks).
> Maintained by the **Ops Chief**.

**Last Updated:** 2026-08-28

## Severity Definitions

| Severity | Definition | Response SLA | Escalation |
|----------|-----------|-------------|------------|
| SEV-1 | Service down, all users affected | 15 min | PX + Ops Chief + On-call |
| SEV-2 | Major feature degraded, many users affected | 30 min | Ops Chief + PM |
| SEV-3 | Minor feature degraded, some users affected | 2 hours | Team Lead |
| SEV-4 | Cosmetic or low-impact issue | Next business day | Team Lead |

## Incident Response Process

### 1. Detection & Classification
- [ ] Alert received (source: monitoring / user report / automated check)
- [ ] Severity classified using definitions above
- [ ] Incident channel / thread created
- [ ] On-call notified per escalation path

### 2. Triage & Containment
- [ ] Impact assessment completed
- [ ] Affected services / users identified
- [ ] Containment action taken (rollback / feature flag / scale)
- [ ] Status page / stakeholders updated

### 3. Resolution
- [ ] Root cause identified
- [ ] Fix implemented and verified
- [ ] Service restored to normal operation
- [ ] Monitoring confirms resolution

### 4. Post-Incident
- [ ] Post-incident review scheduled (within 48 hours for SEV-1/2)
- [ ] Timeline documented
- [ ] Root cause analysis completed
- [ ] Action items created (with owners and due dates)
- [ ] Runbook updated if gap identified

## Runbook Index

> Add service-specific runbooks below as they are created.

| Service | Runbook | Owner | Last Tested |
|---------|---------|-------|-----------|
|         |         |       |           |

## Incident Log

| Incident ID | Date | Severity | Service | Duration | Root Cause | Action Items | Status |
|------------|------|----------|---------|----------|-----------|-------------|--------|
|            |      |          |         |          |           |             |        |
