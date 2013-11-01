require 'spec_helper'

describe "groceries/edit" do
  before(:each) do
    @grocery = assign(:grocery, stub_model(Grocery,
      :item => "MyString",
      :location => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit grocery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grocery_path(@grocery), "post" do
      assert_select "input#grocery_item[name=?]", "grocery[item]"
      assert_select "input#grocery_location[name=?]", "grocery[location]"
      assert_select "input#grocery_user_id[name=?]", "grocery[user_id]"
    end
  end
end
