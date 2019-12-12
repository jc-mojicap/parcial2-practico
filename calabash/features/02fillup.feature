Feature: Fillup info

	Scenario: as a user I want to fillup vehicle information
		Given I press "Fillup"
		When I wait for 2 seconds
		And I enter text "9800" into field with id "price"
		And I enter text "12" into field with id "volume"
		And I enter text "150" into field with id "odometer"
		# And I press view with id "date"
		And I go back
		And I press "Save Fillup"
		And I wait for 2 seconds
		And I press "History"
		Then I should see "12/11/19"
