Feature: Managing Library 

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
		And there is a genre
		When I visit "/books"
		And click "New Book" link
		And fill in the book form
		Then I should see "Book added"
	        And I should be on the "/books" page 
   

	 Scenario: Editing a book
	    Given I am registered and logged in
	    And there is a book in the library
	    When I visit "/books"
	    And I click "Edit" link
	    And I fill in the modified book form
	    Then I should see "Updated Title"
	    And I should be on the "/books" page

	 Scenario: Deleting a book
	    Given I am registered and logged in
	    And there is a book in the library
	    When I visit "/books"
	    And click "Destroy" link
	    Then I should see "Book destroyed."
	    And I should be on the "/books" page


	Scenario: Adding Genre to my Library 
	    Given I am registered and logged in
	    When I visit "/books"
	    And click link "Add Genre"
	    And fill out the Genre form
	    Then I should be on the "/genres" page 
	    And I should see "Drama"
   
	 Scenario: Editing a genre name

	 Scenario: Attempting to delete Genre with books attached
	 
