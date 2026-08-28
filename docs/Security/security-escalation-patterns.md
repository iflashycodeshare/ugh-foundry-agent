# Security Escalation Patterns

> Defines when the Security Reviewer agent must be invoked during code review
> and which patterns trigger automatic escalation.
> See `.github/skills/code-review.md` for integration with the code review workflow.
> Maintained by the **Security Reviewer** agent.

**Last Updated:** 2026-08-28

## Automatic Escalation Triggers

> Any PR or code change touching these patterns MUST trigger Security Reviewer.

| Pattern | Examples | Severity |
|---------|----------|----------|
| Authentication / Authorization | OAuth flows, RBAC, token handling, session management | 🔴 Critical |
| Cryptography | Encryption, hashing, key management, TLS configuration | 🔴 Critical |
| Secrets Management | API keys, connection strings, certificates, Key Vault | 🔴 Critical |
| Infrastructure as Code | Bicep, Terraform, ARM templates, networking rules | 🟠 High |
| CI/CD Pipeline | Workflow files, build scripts, deployment configs | 🟠 High |
| Dependency Changes | package.json, requirements.txt, *.csproj package refs | 🟠 High |
| Network Configuration | Firewall rules, NSGs, private endpoints, DNS | 🟠 High |
| RBAC / IAM | Role assignments, managed identities, service principals | 🟠 High |
| Data Protection | PII handling, data classification, retention policies | 🟡 Medium |
| Input Validation | User input handling, SQL queries, command execution | 🟡 Medium |
| Logging / Monitoring | Audit logs, security events, alerting | 🟡 Medium |

## Escalation Process

1. Code Reviewer detects a pattern match during review
2. Code Reviewer flags the finding and invokes Security Reviewer
3. Security Reviewer performs focused 11-dimension security review
4. Findings logged with severity labels (CRITICAL / MAJOR / MINOR)
5. CRITICAL findings block merge; MAJOR findings require remediation plan

## Ring-Specific Requirements

| Ring | Security Review Requirement |
|------|----------------------------|
| Ring 0 | Threat model review (DP-31) |
| Ring 2 | Security patterns checked during code review |
| Ring 3 | Full IV&V security review (DP-32) |
| Ring 5 | Pre-production security sign-off |
