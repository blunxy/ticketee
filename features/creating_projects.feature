Feature: Creating projects
	In order to have projects to assign tickets to
	As a user
	I want to create them easily

	Scenario: Creating a project
		Given I am on the homepage
		When I navigate to the new project creation page
		And I create a new project	
		Then I should be shown the project creation verification
		And I should be on the newly created project page
		And I should see the new project's title
