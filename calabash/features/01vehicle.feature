Feature: Create Vehicle

	Scenario: as a user I want to create a new car
		Given I press "Vehicles"
		When I wait for 2 seconds
		And I press the menu key
		And I press "Add new vehicle"
		And I enter text "Tucson" into field with id "title"
		And I enter text "2020" into field with id "year"
		And I enter text "Hyundai" into field with id "make"
		And I enter text "2020" into field with id "model"
		And I enter text "Hyundai - tucson" into field with id "description"
		And I go back
		And I press view with id "distance"
		And I press "Kilometers"
		And I press view with id "economy"
		And I press "Km / Gallon"
		And I go back
		And I press "Add new vehicle"
		And I wait for 4 seconds
		Then I should see "Tucson"

	Scenario: as a tester I want to create invalid car
		Given I press "Vehicles"
		When I wait for 2 seconds
		And I press the menu key
		And I press "Add new vehicle"
		And I enter text "2020" into field with id "year"
		And I enter text "Hyundai" into field with id "make"
		And I enter text "Tucson" into field with id "model"
		And I enter text "Particular" into field with id "description"
		And I go back
		And I press view with id "distance"
		And I press "Kilometers"
		And I press view with id "economy"
		And I press "Km / Gallon"
		And I press "Add new vehicle"
		And I wait for 2 seconds
		Then I should see "Invalid vehicle title"
		
	Scenario: as a user I want to create a new type of vehicle
		Given I press "Vehicles"
		When I wait for 2 seconds
		And I press the menu key
		And I press "Edit vehicle types"
		And I wait for 2 seconds
	    And I press the menu key
		And I press "Add new vehicle type"
		And I enter text "Bus" into field with id "title"
		And I enter text "Public" into field with id "description"
		And I press "Add new vehicle type"
		Then I should see "Bus"
		
	Scenario: as a user I want to create a new car with with a different type of vehicle
		Given I press "Vehicles"
		When I wait for 2 seconds
		And I press the menu key
		And I press "Add new vehicle"
		And I enter text "TM" into field with id "title"
		And I enter text "2010" into field with id "year"
		And I enter text "Volvo" into field with id "make"
		And I enter text "TM-CO2" into field with id "model"
		And I enter text "Public" into field with id "description"
		And I go back
		And I press view with id "distance"
		And I press "Kilometers"
		And I press view with id "economy"
		And I press "Km / Gallon"
		And I press "Add new vehicle"
		Then I should see "TM"


	Scenario: as a user I want to edit a car
		Given I press "Vehicles"
		When I wait for 2 seconds
		And I press "TM"
		And I clear input field with id "title"
		And I enter text "TM-edit" into field with id "title"
		And I go back
		And I press "Save changes"
		Then I should see "TM-edit"
