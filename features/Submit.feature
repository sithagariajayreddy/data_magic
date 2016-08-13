@bgd
Feature: Submit Information
  I need to check the View Disclosure
  and Electronic Disclosure


@watir
Scenario: Verify the Rate and Fee Information Disclosure
  Given I am on xxx web
  When I provide application information
  And I select continue button
  And I click on view disclosure
  Then I should see Rate and Fee Information

  @watir
  Scenario: verify the Electronic Disclosure Consent
    Given I am on xxx web
    When I provide application information
    And I select continue button
    Then I should see the correct Electronic Disclosure Consent
    And I agree to term and conditions
