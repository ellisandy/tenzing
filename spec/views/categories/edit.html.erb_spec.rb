require 'spec_helper'

describe "categories/edit" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :title => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", category_path(@category), "post" do
      assert_select "input#category_title[name=?]", "category[title]"
      assert_select "input#category_user_id[name=?]", "category[user_id]"
    end
  end
end
