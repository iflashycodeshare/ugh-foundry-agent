# Source: docs/customer-docs/transcripts/discovery-workshop-session-1.md
# Stakeholder discovery is paraphrased. DISC tags identify requirements absent from SOW wording/capability; ELAB tags refine existing SOW requirements.
@transcript
Feature: Location-aware and safe provider-network enquiry handling
  As a provider network analyst
  I want answers that preserve location, authorization, and safety context
  So that I can act on provider-network information without unsafe assumptions.

  @DISC-01 @priority-must
  Scenario: Answer contract status at the identified location
    Given a provider organization has more than one location with different contract status
    When an analyst asks about a clinic's network status or reimbursement tier
    Then the answer is at the location level
    And it explicitly identifies the location addressed
    And it does not infer that a group contract applies to every location.

  @DISC-02 @priority-must
  Scenario: Authorize before retrieving business-unit data
    Given an analyst is authenticated with a business-unit scope
    When the analyst asks for provider-network information
    Then authorization is evaluated at query time using the requester's identity
    And retrieval is limited to the authorized business-unit scope
    And unauthorized business-unit records are not retrieved for later filtering.

  @DISC-03 @priority-must @negative @audit
  Scenario: Refuse, route, and log a coverage-determination request
    Given a request about service coverage for a specific member has been refused under BR-04
    When the refusal workflow is completed
    Then the analyst is routed to the benefits team
    And the refusal interaction is retained for audit.

  @DISC-04 @priority-must @negative
  Scenario: State record-specific uncertainty without inventing an answer
    Given no amendment record can be found for the identified location
    When the agent responds to an in-scope contract question
    Then it states that the amendment record could not be found for that location
    And it does not invent a contract status or reimbursement tier.

  @DISC-05 @priority-must @freshness
  Scenario: Surface the known amendment freshness limitation
    Given the business expects an amendment loaded yesterday to be reflected
    When the agent uses amendment information for an identified location
    Then the answer provides the available amendment information and its applicable freshness context
    And it does not represent intra-day amendments as available when they are not.

  @ELAB-01 @BR-05 @priority-should @metric
  Scenario: Measure operational response-time expectation
    Given an in-scope question can be answered from approved sources
    When response time is measured for analyst use
    Then the measured response time is reported against the stakeholder reference points of approximately 5 seconds and under 10 seconds.

  @DISC-06 @BR-07 @priority-could @feedback
  Scenario: Capture detailed optional negative feedback
    Given an analyst receives an answer believed to be poor
    When the analyst chooses to provide optional quality feedback
    Then the analyst can record a negative rating with a comment
    And the feedback remains a Could priority rather than a first-release Must requirement.

  @scope @read-only @negative
  Scenario: Keep the first release read only
    Given an analyst asks to update a contract or other provider-network record
    When the agent evaluates the request
    Then it does not perform a write operation.