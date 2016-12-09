<?php

use Behat\Behat\Tester\Exception\PendingException;
use Behat\Behat\Context\Context;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;
use Behat\MinkExtension\Context\RawMinkContext;

use Behat\Mink\Driver\Selenium2Driver;

require_once __DIR__.'/../../vendor/phpunit/phpunit/src/Framework/Assert/Functions.php';

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawMinkContext implements Context, SnippetAcceptingContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * @return \Behat\Mink\Element\DocumentElement
     */
    private function getPage()
    {
        return $this->getSession()->getPage();
    }

    /**
     * @When I press the go button
     */
    public function iPressTheGoButton()
    {
        $webElement = $this->getPage()
            ->findButton('edit-submit-career-center');

        assertNotNull($webElement, 'The button element was not found.');

        $webElement->click();
    }

    /**
     * @Then I wait :time milliseconds
     */
    function iWaitMilliseconds($time) {
        $this->getSession()->wait($time);
    }

    /**
     * @Then I should see :text if I wait :time milliseconds
     */
    public function iShouldSeeIfIWait($text, $time) {
        $this->getSession()->wait($time);
        $this->assertSession()->pageTextContains($text);
    }

    /**
     * @Then I switch to the iframe :element
     */
    public function iSwitchToTheIframe($element) {
        $this->getSession()->switchToIFrame($element);
    }
}
