Feature: Smoking Break

	In order to keep track of my life
	As a user
	I want to measure how much i smoke
	
	Scenario: Smoke Break
		Given I am registered and logged in
		When I visit "/"
		And click "smoke break"
		Then I should see "Smoke break recorded"