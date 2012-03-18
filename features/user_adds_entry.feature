Feature: User adds income and expense entries
  As a user
  I want to add income and expenses
  So that I can track my income and expenses

  Scenario: Add first income entry
    Given I have no entries
    When I visit the home page
    And I fill in "Entry" with "March Salary 1000"
    And I click "Submit"
    Then I should see that I have "1" income line
    And I should see that I have "1000.00" total

  Scenario: Add a second entry
    Given I have only 1 entry titled "misthos" which amounts to "7000"
    When I visit the home page
    And I fill in "Entry" with "Miza -5000"
    And I click "Submit"
    Then I should see that I have "2000.00" total
