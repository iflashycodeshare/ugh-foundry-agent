# Source: docs/customer-docs/Architecture-docs/platform-constraints.md
# Platform constraints are authoritative controls, not target-architecture decisions.
@platform
Feature: UHG platform control boundaries
  As a UHG platform control owner
  I want provider-network agent operations to comply with mandated boundaries
  So that the service remains within approved identity, data, governance, and release controls.

  @ARC-01 @identity
  Scenario: Accept Microsoft Entra ID only
    Given a user or workload requests access to the service
    When identity is authenticated
    Then Microsoft Entra ID is the only accepted identity provider.

  @ARC-02 @managed-identity @negative
  Scenario: Disallow static application credentials
    Given the application needs access to an approved service
    When application access is configured
    Then it uses managed identity
    And stored secrets and static bearer tokens are not permitted in application configuration.

  @ARC-03 @authorization
  Scenario: Evaluate authorization before retrieval
    Given a caller requests provider-network data
    When authorization is evaluated
    Then business-unit scope is evaluated for that request before retrieval
    And post-retrieval filtering is not used as the authorization control.

  @ARC-04 @residency
  Scenario: Keep processing and storage in United States Azure regions
    Given the service processes or stores customer data
    When a processing or storage operation occurs
    Then it remains within United States Azure regions.

  @ARC-05 @tenant-boundary
  Scenario: Prevent customer data from leaving the tenant
    Given provider or member data is processed
    When data exchange is attempted
    Then the data remains within the UHG tenant boundary.

  @ARC-06 @negative @model-governance
  Scenario: Prohibit training and fine tuning on customer data
    Given provider or member data is available to the service
    When model training or fine tuning is requested
    Then customer data is not used for that purpose.

  @ARC-07 @diagnostics @negative
  Scenario: Exclude provider payloads from diagnostic logging
    Given a prompt or completion contains provider data
    When diagnostics are recorded
    Then the provider-data payload is excluded from diagnostic logging.

  @ARC-08 @approved-services
  Scenario Outline: Use the approved platform service for each capability
    Given the platform capability is "<capability>"
    When the capability is used
    Then the approved UHG standard is "<standard>".

    Examples:
      | capability             | standard                                  |
      | Agent hosting          | Microsoft Foundry hosted agents           |
      | Secrets                | Azure Key Vault with managed identity     |
      | Observability          | Azure Monitor and Application Insights    |
      | Infrastructure as code | Bicep through Azure DevOps pipelines       |
      | Work tracking          | Azure DevOps Boards                        |
      | Source control         | Azure DevOps Repos                         |

  @ARC-09 @model-governance
  Scenario: Restrict model use to the approved allowlist
    Given a model is proposed for use
    When model governance is evaluated
    Then the model is on the UHG AI allowlist.

  @ARC-10 @change-control
  Scenario: Govern a model version change
    Given a change to a model version is proposed
    When the change is evaluated
    Then change advisory board approval is required
    And a documented evaluation baseline exists before the version change.

  @ARC-11 @data-sources
  Scenario: Access all approved data sources using their defined modes
    Given the service needs provider-network information
    When it accesses contracting, credentialing, amendment, or provider-directory data
    Then contracting data is accessed through a read-only API
    And credentialing data is accessed through a read-only API
    And amendment data is accessed through a nightly export
    And provider-directory data is accessed through a read-only API.

  @ARC-12 @release-gate
  Scenario: Enforce all production release gates
    Given a production deployment window is proposed
    When release authorization is assessed
    Then security review is signed off
    And responsible AI assessment is signed off
    And the ATO package is submitted and accepted
    And change advisory board approval is obtained
    And a documented rollback plan exists.

  @ARC-13 @risk @freshness
  Scenario: Do not claim intra-day amendment freshness
    Given an amendment is made after the nightly export
    When an answer relies on the amendment register
    Then the answer does not claim that the intra-day amendment is reflected.

  @ARC-14 @risk @location
  Scenario: Guard against location-level misinterpretation
    Given provider contract information is returned
    When the provider has multiple locations
    Then the result preserves the location-level contract context needed to avoid misinterpretation.