Feature: Search Internships
  In order to apply to internships
  As a web user
  I need to be able to find them first

  Rules:
  - Not selecting an option from the dropdown searches all available interships
  - Can select other Los Angeles County, In/Out Of LA, and Outside Los Angeles


  Background:
    Given I am on "/about/career-center/interns/available-internships-cfhc"

  Scenario:
    Then I should see "Los Angeles County" in "#edit-field-inside-outside-of-la-value"
    And I should see "In/Out Of LA" in "#edit-field-inside-outside-of-la-value"
    And I should see "Outside Los Angeles" in "#edit-field-inside-outside-of-la-value"