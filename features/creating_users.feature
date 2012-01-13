Feature: Creating Users
I wanna make new users as an admin

Background:
	Given there are the following users:
		|email|password|is_admin|
		|admin@ticketee.com|password|true|
	And I am signed in as them
	Given I am on the homepage
	When I follow "Admin"
	And I follow "Users"
	When I follow "New User"

Scenario: Creating a new user
	And I fill in "Email" with "newbie@ticketee.com"
	And I fill in "Password" with "password"
	And I press "Create User"
	Then I should see "User has been created."

Scenario: Can't make a user if I leave the email blank
	And I fill in "Email" with ""
	And I fill in "Password" with "password"
	And I press "Create User"
	Then I should see "User has not been created."
	And I should see "Email can't be blank"

Scenario: Creating admin users
	When I fill in "Email" with "newadmin@ticketee.com"
	And I fill in "Password" with "password"
	And I check "Is admin?"
	And I press "Create User"
	Then I should see "User has been created."
	And I should see "newadmin@ticketee.com (Admin)"
