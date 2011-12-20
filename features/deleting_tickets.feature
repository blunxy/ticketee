Feature: Deleting tickets

Background:
	Given there is a project called "TextMate 2"
	And that project has a ticket:
		|title|description|
		|Make it shiny!|Gradients! Starbursts! Oh my!|
	Given I am on the homepage
	When I follow "TextMate 2"
	And I follow "Make it shiny!"

Scenario: Delting a ticket
	When I follow "Delete Ticket"
	Then I should see "Ticket has been deleted."
	And I should be on the project page for "TextMate 2"
