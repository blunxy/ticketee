Given /^I am on the homepage$/ do 
  visit('/')
end

When /^I follow "([^"]*)"$/ do |link_name|
  click_link(link_name)
end

When /^I navigate to the new project creation page$/ do
  click_link('New Project')
end

When /^I create a new project$/ do
  fill_in('Name', :with => 'TextMate 2')
  click_button('Create Project')
end

Then /^I should be shown the project creation verification$/ do
  page.should have_content('Project has been created.')
end

Then /^I should be on the newly created project page$/ do
    new_project_path = project_path(Project.find_by_name!("TextMate 2"))
    visit(new_project_path)
end

Then /^I should be on the project page for "([^"]*)"$/ do |name|
  visit(project_path(Project.find_by_name!(name)))
end

Then /^I should see the new project's title$/ do
  page.should have_content("TextMate 2 - Projects - Ticketee")
end

Then /^I should not see "([^"]*)"$/ do |arg1|
  page.should_not have_content(arg1)
end

Given /^there is a project called "([^"]*)"$/ do |name|
 @project = Factory(:project, :name => name) 
end
When /^I create a project without a name$/ do
  click_button('Create Project')
end

Then /^I should see a warning telling me that the project wasn't created$/ do
  page.should have_content("Project has not been created.") 
end

Then /^I should see the reason why$/ do
  page.should have_content("Name can't be blank")
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, entry|
 fill_in(field, :with => entry)
end

When /^I press "([^"]*)"$/ do |button|
  click_button(button)
end 

Then /^I should see "([^"]*)"$/ do |page_content|
  page.should have_content(page_content)
end

