# Architecture Constraints — UHG Platform Standards

**Status:** MOCK DOCUMENT — created for Agent Workspace evaluation only

## Identity and Access

- Microsoft Entra ID is the only accepted identity provider.
- Application access uses managed identity. Stored secrets and static bearer
  tokens are not permitted in application configuration.
- Authorization is evaluated per request against the caller's business unit
  scope. Post-retrieval filtering is not an acceptable control.

## Data Boundaries

- All processing and storage remain within US Azure regions.
- Provider and member data must not leave the UHG tenant boundary.
- Customer data must not be used for model training or fine tuning.
- Prompt and completion payloads containing provider data are excluded from
  diagnostic logging.

## Approved Platform Services

| Capability | Standard |
| --- | --- |
| Agent hosting | Microsoft Foundry hosted agents |
| Secrets | Azure Key Vault with managed identity access |
| Observability | Azure Monitor and Application Insights |
| Infrastructure as code | Bicep, deployed through Azure DevOps pipelines |
| Work tracking | Azure DevOps Boards |
| Source control | Azure DevOps Repos |

## Model Governance

- Only models on the UHG AI allowlist may be used.
- Model version changes require change advisory board approval.
- A documented evaluation baseline must exist before any model version change.

## Data Sources

| Source | Contents | Access |
| --- | --- | --- |
| Contracting system | Provider contracts, tiers, effective dates | Read only API |
| Credentialing system | Credentialing status and expiry | Read only API |
| Amendment register | Contract amendments by location | Nightly export |
| Provider directory | Locations, specialties, identifiers | Read only API |

## Release Gates

1. Security review sign off.
2. Responsible AI assessment sign off.
3. Authority to operate package submitted and accepted.
4. Change advisory board approval for the production deployment window.
5. Documented rollback plan.

## Known Risks

- The amendment register is a nightly export, so intra-day amendments will not
  be reflected. Freshness expectations must be agreed with the business.
- Location level contract status is frequently misinterpreted. This is the most
  likely source of incorrect answers.
