Feature: Creating projects
	In order to have projects to assign tickets to
	As a user
	I want to create them easily

	Background:
		Given there are the following users:
			|email|password|is_admin| 
			|admin@ticketee.com|password|true|
		And I am signed in as them
		Given I am on the homepage
		When I navigate to the new project creation page
	
	Scenario: Creating a project
		And I create a new project	
		Then I should be shown the project creation verification
		And I should be on the newly created project page
		And I should see the new project's title
	
	Scenario: Creating a project without a name
		And I create a project without a name
		Then I should see a warning telling me that the project wasn't created
		And I should see the reason why
