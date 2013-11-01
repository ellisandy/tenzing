require 'spec_helper'

describe "groceries/show" do
  before(:each) do
    @grocery = assign(:grocery, stub_model(Grocery,
      :item => "Item",
      :location => "Location",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item/)
    rendered.should match(/Location/)
    rendered.should match(/1/)
  end
end
