Feature: Homepage Twitter Feed
  Background:
    Given I am on "/"

  @javascript
  Scenario:
    Then I should see "Latest Tweets"
    And I should see a ".twitter-timeline" element
    And I wait 2000 milliseconds
    Then I should see a "#twitter-widget-0" element
    And I switch to the iframe "#twitter-widget-0"
    Then I should see "@EssnAccessHlth"