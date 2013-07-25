Feature: Smoking Break

	In order to keep track of my books 
	As a user
	I want to track my library 
	
	Scenario: View my Library 
		Given I am registered and logged in
		When I visit "/"
		And click "Books" link
		Then I should be on the "/books" page 

	Scenario: Add book to  my Library 
		Given I am registered and logged in
		When I visit "/books"
		And click "New Book" link
		And fill in the book form
		Then I should see "Book added"
	        And I should be on the "/books" page 
