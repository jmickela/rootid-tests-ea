Feature: Search Internships
  In order to apply to internships
  As a web user
  I need to be able to find them first

  Rules:
  - Search term is not required to conduct search
  - Not selecting an option from the dropdown searches all available interships
  - All available internships displayed by default (as of 10/16/2016)
    ------------------------------------------------------
    Clinical Informatics & Evaluation Intern (Los Angeles)
    Web Development Intern
    STD Prevention Program Intern - Los Angeles
    Clinical Research Intern (Los Angeles)
    Clinical Research Intern (Berkeley)
    TeenSource.org Intern (Berkeley)
    ------------------------------------------------------

  Background:
    Given I am on "/about/career-center/interns/available-internships-cfhc"

  Scenario Outline:
    When I fill in "keys" with "<search_term>"
    And I select "<option>" from "field_inside_outside_of_la_value"
    And I press the go button
    Then I should see "<search_result>"
    Examples:
      |search_term|option|search_result|
      |||Clinical Informatics & Evaluation Intern (Los Angeles)|
      |||Web Development Intern|
      |||Clinical Research Intern (Los Angeles)|
      |||Clinical Research Intern (Berkeley)|
      |||TeenSource.org Intern (Berkeley)|
      |Clinical Research|Los Angeles County|Clinical Research Intern (Los Angeles)|
      |Clinical Research|Outside Los Angeles|Clinical Research Intern (Berkeley)|
      |Cab Driver|Los Angeles County|Sorry, there were no listings that match your search.|
      |Cab Driver|Outside Los Angeles|Sorry, there were no listings that match your search.|
      |Web Development|Outside Los Angeles|Sorry, there were no listings that match your search.|
      |Web Development|Los Angeles County|Web Development Intern|      
      |LA|Los Angeles County|You must include at least one positive keyword with 3 characters or more.|
      |Teen||TeenSource.org Intern (Berkeley)|