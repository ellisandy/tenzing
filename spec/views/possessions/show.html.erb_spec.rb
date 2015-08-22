require 'spec_helper'

describe "possessions/show" do
  before(:each) do
    @possession = assign(:possession, stub_model(Possession,
      :category_id => 1,
      :title => "Title",
      :user_id => 2,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end
