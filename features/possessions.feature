Feature: Managing Possessions 

	In order to keep track of my possessions 
	As a user
	I want to track my possessions 
	
	Scenario: View my Posessions 
		Given I am registered and logged in
		When I visit "/"
		And click "Possessions" link
		Then I should be on the "/possessions" page 

	 Scenario: View my Categories
	    Given I am registered and logged in
	    When I visit "/possessions"
	    And click "Categories" link
	    Then I should be on the "/categories" page

