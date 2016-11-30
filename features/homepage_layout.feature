Feature: Taking a screenshot of the homepage
  In order to ensure proper display of homepage
  As a behat tester
  I need to be able to take a screenshot

  Background:
    Given I am on "/"
  
  @javascript
  Scenario:
    Then I save a screenshot to "homepage_layout.png"