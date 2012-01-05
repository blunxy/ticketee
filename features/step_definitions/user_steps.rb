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
