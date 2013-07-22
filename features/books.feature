Feature: Smoking Break

	In order to keep track of my books 
	As a user
	I want to track my library 
	
	Scenario: Add a book to my Library 
		Given I am registered and logged in
		When I visit "/"
		And click "Books"
		Then I should be on the "/books" page 
