Given(/^I am not registered$/) do
end

When(/^I visit "(.*?)"$/) do |arg1|
  visit(arg1)
end

Then(/^I will see the Landings Index Page$/) do
  page.should have_content("Landings#index")
end

Then(/^I should be redirected to the Login Page$/) do
  current_path.should eq(login_path)
end