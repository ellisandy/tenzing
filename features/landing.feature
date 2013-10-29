Feature:Landing page

	In order to keep track of my life
	As a user
	I want to to see the dashboard
	
	Scenario: Landing Page
		Given I am not registered
		When I visit "/"
		Then I should be redirected to the Login Page
		# Then I will see the Landings Index Page