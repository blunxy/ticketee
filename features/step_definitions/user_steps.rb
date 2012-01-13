Then /^show me the page$/ do
  puts page.html 
end
 
Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
    unconfirmed = attributes.delete("unconfirmed") == "true"
    @user = User.create!(attributes)
    @user.update_attribute("is_admin", attributes["is_admin"] == "true")
    @user.confirm! unless unconfirmed
  end
end

Given /^I am signed in as them$/ do
  steps %{
    Given I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "#{@user.email}"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
  }
end

Given /^I am signed in as "([^"]*)"$/ do |email|
  if (email != "nobody")
    @user = User.find_by_email!(email)
    steps("Given I am signed in as them") 
  end 
end

When /^I check "([^"]*)"$/ do |checkbox_name|
  check(checkbox_name)
end
