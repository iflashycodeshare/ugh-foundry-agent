# Source: docs/customer-docs/Objective/statement-of-work.md
# Contractual scope authority. Priority tags use Must, Should, and Could from the SOW.
@sow
Feature: Grounded provider-network answers
  As an authenticated provider network analyst
  I want grounded answers to natural-language questions
  So that I can resolve provider-network enquiries consistently.

  @BR-01 @must
  Scenario: Return a grounded answer to an in-scope provider-network question
    Given an analyst asks an in-scope question about provider network data
    When the agent finds supporting approved-source records
    Then the agent returns an answer supported by at least one cited source record.

  @BR-02 @must
  Scenario: Cite every factual claim
    Given an answer contains factual claims about provider network data
    When the agent returns the answer
    Then every factual claim identifies its source system and source record identifier.

  @BR-03 @must
  Scenario: Restrict results to the analyst business unit
    Given an analyst has an authorized business-unit scope
    When the analyst asks a provider-network question
    Then the returned results are restricted to that authorized business unit.

  @BR-04 @must @negative
  Scenario: Refuse a coverage-determination question
    Given an analyst asks for advice that would constitute a coverage determination
    When the agent evaluates the question
    Then the agent refuses to provide a coverage determination.

  @BR-05 @should @metric
  Scenario: Meet the response-time objective
    Given an in-scope question can be answered from approved sources
    When the agent processes the question under representative operating conditions
    Then the measured median response time is under 6 seconds.

  @BR-06 @must @audit
  Scenario: Retain query and response records
    Given an analyst submits any question and the agent produces a response
    When the interaction is completed
    Then the query and response are retained for audit for 7 years.

  @BR-07 @could @feedback
  Scenario: Rate answer quality inline
    Given an analyst receives an answer
    When the analyst submits an inline quality rating
    Then the rating is associated with that answer for quality review.

  @BR-08 @must @negative
  Scenario: State uncertainty when no answer is found
    Given approved-source records do not support an answer to an in-scope question
    When the agent responds
    Then it states that it cannot find an answer and does not guess.

  @NFR-01 @must @residency
  Scenario: Keep processing in United States regions
    Given the agent processes or stores provider-network data
    When the processing occurs
    Then all processing and storage remain in United States regions.

  @NFR-02 @must @tenant-boundary
  Scenario: Keep provider and member data within the UHG tenant
    Given provider or member data is used to answer a question
    When the data is processed
    Then the data does not leave the UHG tenant boundary.

  @NFR-03 @should @availability
  Scenario: Meet business-hours availability target
    Given the agent is within defined business hours
    When availability is measured over the agreed measurement period
    Then availability is at least 99.5 percent.

  @NFR-04 @must @release-gate
  Scenario: Require responsible AI assessment before production
    Given a production release is proposed
    When release readiness is evaluated
    Then a responsible AI assessment has been completed.

  @NFR-05 @must @release-gate
  Scenario: Require security review and ATO before go-live
    Given go-live is proposed
    When release readiness is evaluated
    Then the solution has passed UHG security review and ATO.

  @scope @negative
  Scenario: Do not write to a system of record
    Given an analyst asks the agent to change a provider-network record
    When the agent evaluates the request
    Then the agent does not write to any system of record.

  @scope @negative
  Scenario: Exclude prohibited subject matter
    Given an analyst asks about member or patient clinical data, claims adjudication, or coverage determination
    When the agent evaluates the request
    Then the agent does not provide the prohibited information or decision.

  @constraint @acceptance
  Scenario: Enforce contractual release acceptance conditions
    Given engagement acceptance is evaluated
    When independent validation results and release evidence are reviewed
    Then all Must requirements have passed independent validation
    And the responsible AI assessment is signed
    And the ATO package is submitted.

  @constraint @governance
  Scenario: Use required delivery governance constraints
    Given delivery work is tracked or a production deployment is proposed
    When governance controls are applied
    Then work tracking uses Azure DevOps
    And production deployment requires change advisory board approval
    And model selection is limited to the UHG AI allowlist.