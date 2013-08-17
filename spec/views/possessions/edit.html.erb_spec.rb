require 'spec_helper'

describe "possessions/edit" do
  before(:each) do
    @possession = assign(:possession, stub_model(Possession,
      :category_id => 1,
      :title => "MyString",
      :user_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit possession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", possession_path(@possession), "post" do
      assert_select "input#possession_category_id[name=?]", "possession[category_id]"
      assert_select "input#possession_title[name=?]", "possession[title]"
      assert_select "input#possession_user_id[name=?]", "possession[user_id]"
      assert_select "textarea#possession_description[name=?]", "possession[description]"
    end
  end
end
