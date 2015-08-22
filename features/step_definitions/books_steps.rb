Then(/^I should be on the "(.*?)" page$/) do |arg1|
   current_path.should eq(arg1)
end

When(/^fill in the book form$/) do
   fill_in "Title", with: "New Book"
   select "Drama", from: "book_genre_id"
   fill_in "Author", with: "New Author"
   click_button "Create Book"
end

When(/^click link "(.*?)"$/) do |arg1|
   click_link arg1
end

When(/^fill out the Genre form$/) do
   fill_in "Title", with: "Drama"
   click_button "Create Genre"
end

Given(/^there is a book in the library$/) do
   bc = Book.count
   visit('/books')
   click_link "New Book"
   fill_in "Title", with: "World War Z"
   fill_in "Author", with: "New Author"
   click_button "Create Book"
<<<<<<< HEAD
   page.find('div.alert-box').should have_text("Book added.")
=======
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
end

When(/^I click "(.*?)" link$/) do |arg1|
   click_link(arg1)
end

When(/^I fill in the modified book form$/) do
   fill_in "Title", with: "Updated Title"
   click_button "Update Book"
end

Given(/^there is a genre$/) do
<<<<<<< HEAD
   FactoryGirl.create(:genre, :user => User.last, :title => "Drama")
=======
   FactoryGirl.create(:genre, :user => User.last, :title => "Drama") 
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
end
