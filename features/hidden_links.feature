Feature: Hidden Links

Background:
	Given there are the following users:
		|email|password|is_admin|
		|user@ticketee.com|password|false|
		|admin@ticketee.com|password|true|
	And there is a project called "TextMate 2"
	And I am on the homepage

	Scenario Outline: Link visibility of new projects
		Given I am signed in as "<Email>"
		Then "New Project" should be "<visible or not visible>"
		Examples:
			|Email|visible or not visible|
			|nobody|not visible|
			|user@ticketee.com|not visible|
			|admin@ticketee.com|visible|
		
	Scenario Outline: Link visibility of edits and deletions 
		Given I am signed in as "<Email>"
		When I follow "TextMate 2"
		Then "<this link>" should be "<visible or not visible>"
		Examples: Not signed in
			|Email|this link|visible or not visible|
			|nobody|Edit Project|not visible|
			|nobody|Delete Project|not visible|
		
		Examples: Signed in as a non-admin
		 	|Email|this link|visible or not visible|
		 	|user@ticketee.com|Edit Project|not visible|
		 	|user@ticketee.com|Delete Project|not visible|

		Examples: Signed in as an admin
			|Email|this link|visible or not visible|
			|admin@ticketee.com|Edit Project|visible|
			|admin@ticketee.com|Delete Project|visible|

