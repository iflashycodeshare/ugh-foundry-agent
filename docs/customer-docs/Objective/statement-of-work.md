# Statement of Work — Provider Network Intelligence Agent

**Customer:** UnitedHealth Group (UHG)
**Engagement:** ISD Custom Solutioning
**Solution type:** Hosted agent on Microsoft Foundry
**Status:** MOCK DOCUMENT — created for Agent Workspace evaluation only

## Business Context

Provider Network Operations analysts answer questions about contracted provider
networks, credentialing status, and reimbursement terms. Today this requires
querying four systems manually. Average handling time is 18 minutes per enquiry
and roughly 40 percent of enquiries are repeat questions.

## Objective

Deliver a hosted Foundry agent that lets an authenticated analyst ask natural
language questions about provider network data and receive grounded, cited
answers, reducing average handling time and improving answer consistency.

## In Scope

1. Hosted agent deployed to a UHG-controlled Azure subscription.
2. Retrieval over four approved provider data sources.
3. Microsoft Entra authentication with role-based access.
4. Citation of the source record for every factual claim.
5. Evaluation harness with a regression suite.
6. Audit logging of every query and response.

## Out of Scope

- Writing to any system of record.
- Member or patient clinical data.
- Claims adjudication decisions.
- Any advice that constitutes a coverage determination.

## Business Requirements

| ID | Requirement | Priority |
| --- | --- | --- |
| BR-01 | Analysts ask questions in natural language and receive a grounded answer. | Must |
| BR-02 | Every factual claim cites the source system and record identifier. | Must |
| BR-03 | Results are restricted to the requester's authorized business unit. | Must |
| BR-04 | The agent refuses coverage determination questions and routes them. | Must |
| BR-05 | Median response time under 6 seconds. | Should |
| BR-06 | All queries and responses are retained for audit for 7 years. | Must |
| BR-07 | Analysts can rate answer quality inline. | Could |
| BR-08 | The agent states when it cannot find an answer rather than guessing. | Must |

## Non-Functional Requirements

| ID | Requirement |
| --- | --- |
| NFR-01 | Data residency: all processing remains in US regions. |
| NFR-02 | No provider or member data leaves the UHG tenant boundary. |
| NFR-03 | Availability target 99.5 percent during business hours. |
| NFR-04 | Responsible AI assessment completed before production release. |
| NFR-05 | Solution passes UHG security review and ATO before go-live. |

## Constraints

- UHG standard is Azure DevOps for work tracking, not GitHub.
- Production deployment requires change advisory board approval.
- Model selection restricted to models approved on the UHG AI allowlist.

## Acceptance

The engagement is accepted when all Must requirements pass independent
validation, the RAI assessment is signed, and the ATO package is submitted.
