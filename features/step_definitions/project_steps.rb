Given /^I am on the homepage$/ do 
  visit('/')
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

Then /^I should see the new project's title$/ do
  page.should have_content("TextMate 2 - Projects - Ticketee")
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
