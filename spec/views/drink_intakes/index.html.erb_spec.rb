require 'rails_helper'

RSpec.describe "drink_intakes/index", :type => :view do
  before(:each) do
    assign(:drink_intakes, [
      DrinkIntake.create!(
        :user_id => 1,
        :recorded_time => ""
      ),
      DrinkIntake.create!(
        :user_id => 1,
        :recorded_time => ""
      )
    ])
  end

  it "renders a list of drink_intakes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
