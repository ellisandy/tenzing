
Then(/^I should be on the "(.*?)" page$/) do |arg1|
   current_path.should eq(arg1)
end

When(/^fill in the book form$/) do
   fill_in "Title", with: "New Book"
   fill_in "Author", with: "New Author"
   click_button "Create Book"
end
