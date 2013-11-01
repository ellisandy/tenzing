require 'spec_helper'

describe "groceries/index" do
  before(:each) do
    assign(:groceries, [
      stub_model(Grocery,
        :item => "Item",
        :location => "Location",
        :user_id => 1
      ),
      stub_model(Grocery,
        :item => "Item",
        :location => "Location",
        :user_id => 1
      )
    ])
  end

  it "renders a list of groceries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
