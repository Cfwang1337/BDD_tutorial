Feature: Confirming that the tip calculator form displays

    Scenario: check that the form displays
        When I go to the tip calculator
        Then I should see the calculator form

    Scenario: check that the form submits successfully
        When I go to the tip calculator
        And I submit the form with a valid total and tip percentage
        Then I should see the results page

    Scenario: check that the calculator displays the correct output
        When I go to the tip calculator
        And I submit 50 for meal cost and 20 for tip percentage
        Then I should see 10 displayed on the results page
    Scenario: check that the calculator ignores negative values
        When I go to the tip calculator
        And I submit 30 for meal cost and -15 for tip percentage
        Then I should see 4.5 displayed on the results page