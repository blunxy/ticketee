Feature: Signing in

Scenario: Signing in via email confirmation
	Given there are the following users:
		|email|password|
		|user@ticketee.com|password|
	And "user@ticketee.com" opens the email with subject "Confirmation instructions"
	And they click the first link in the email
	Then I should see "Your account was successfully confirmed"
	And I should see "Signed in as user@ticketee.com"
