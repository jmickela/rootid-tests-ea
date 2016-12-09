Feature: Homepage layout
  In order to ensure proper display of homepage
  I should be able to see the main panel
  and all of its contents

  Background:
    Given I am on "/"

  Scenario:
    Then I should see "Essential Access Health champions and promotes quality sexual + reproductive health care for all."
    And I should see "view events calendar"

  Scenario Outline:
    Then I should see "<menu_item>"

    Examples:
      |menu_item|
      |Programs + Services|
      |Learning Exchange  |
      |Research Center    |
      |Advocacy + Awareness|
      |About               |

  Scenario Outline:
    Then I should see a "<class_name>" element

    Examples:
      |class_name               |
      |#region-menu             |
      |.panels-flexible-1-inside|
      |.frontpage-image         |
      |.panels-flexible-row-1-1 |
      |#node-page-9             |
      |.pane-block-3            |
      |.panels-flexible-region-1-events|
      |.view-homepage-upcoming-events  |
