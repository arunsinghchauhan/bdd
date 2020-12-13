Feature: Google Homepage
This function verifies the functionality on Google Homepage

Scenario: Check that main elements on Google Homepage are displayed
Given I launch the Chrome browser
When I open Google Homepage
Then I verify that the page displayed search text box
And the page displayed Google Search Button
And the page displayed Im feeling Lucky button
