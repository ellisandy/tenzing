<<<<<<< HEAD
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
=======
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
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
		Given I am registered and logged in
		And there is a genre
		When I visit "/books"
		And click "New Book" link
		And fill in the book form
		Then I should see "Book added"
<<<<<<< HEAD
    And I should be on the "/books" page

=======
	        And I should be on the "/books" page 
   
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501

	 Scenario: Editing a book
	    Given I am registered and logged in
	    And there is a book in the library
	    When I visit "/books"
	    And I click "Edit" link
	    And I fill in the modified book form
<<<<<<< HEAD
	    Then I should see "Book was successfully updated."
=======
	    Then I should see "Updated Title"
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
	    And I should be on the "/books" page

	 Scenario: Deleting a book
	    Given I am registered and logged in
	    And there is a book in the library
	    When I visit "/books"
	    And click "Destroy" link
	    Then I should see "Book destroyed."
	    And I should be on the "/books" page


<<<<<<< HEAD
	Scenario: Adding Genre to my Library
=======
	Scenario: Adding Genre to my Library 
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
	    Given I am registered and logged in
	    When I visit "/books"
	    And click link "Add Genre"
	    And fill out the Genre form
<<<<<<< HEAD
	    Then I should be on the "/genres" page
	    And I should see "Genre was successfully created"

	 Scenario: Editing a genre name

	 Scenario: Attempting to delete Genre with books attached

=======
	    Then I should be on the "/genres" page 
	    And I should see "Drama"
   
	 Scenario: Editing a genre name

	 Scenario: Attempting to delete Genre with books attached
	 
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
