Feature: Background color change
	As a user of the demo I want to test the background color change

	Scenario: Can change background color to red
		Given I am on the demo page
		When I click the red button
		Then I see the background change to red

    Scenario: Can change background color to blue
        Given I am on the demo page
        When I click the blue button
        Then I see the background change to blue

    Scenario: Can change background color to green
        Given I am on the demo page
        When I click the green button
        Then I see the background change to green
