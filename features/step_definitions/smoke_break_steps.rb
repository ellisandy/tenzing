Given(/^I am registered and logged in$/) do
  visit(signup_path)
  fill_in "Username", :with => "username"
  fill_in "Email", with: "user@email.com"
  fill_in "Password", with: "Password123"
  fill_in "Confirm Password", with: "Password123"
  click_button "Sign up"
  current_path.should eq("/")
end

When(/^click "(.*?)" link$/) do |arg1|
  click_link arg1 
end

When(/^click "(.*?)" button$/) do |arg1|
  click_button arg1 
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
end
