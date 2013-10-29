Feature: Smoking Break

	In order to keep track of my life
	As a user
	I want to measure how much i smoke
	
	Scenario: Smoke Break
		Given I am registered and logged in
		When I visit "/"
		And click "Smoke Break" link
		Then I should see "You have smoked"
