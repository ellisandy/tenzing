Given(/^I am registered and logged in$/) do
<<<<<<< HEAD
  User.where(:username => "username").destroy_all
=======
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
  visit(signup_path)
  fill_in "Username", :with => "username"
  fill_in "Email", with: "user@email.com"
  fill_in "Password", with: "Password123"
  fill_in "Confirm Password", with: "Password123"
  click_button "Sign up"
  current_path.should eq("/")
end

When(/^click "(.*?)" link$/) do |arg1|
<<<<<<< HEAD
  click_link arg1
end

When(/^click "(.*?)" button$/) do |arg1|
  click_button arg1
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.find('div.alert-box').should have_text(arg1)
=======
  click_link arg1 
end

When(/^click "(.*?)" button$/) do |arg1|
  click_button arg1 
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
end
