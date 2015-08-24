require 'rails_helper'

RSpec.describe "drink_intakes/new", :type => :view do
  before(:each) do
    assign(:drink_intake, DrinkIntake.new(
      :user_id => 1,
      :recorded_time => ""
    ))
  end

  it "renders new drink_intake form" do
    render

    assert_select "form[action=?][method=?]", drink_intakes_path, "post" do

      assert_select "input#drink_intake_user_id[name=?]", "drink_intake[user_id]"

      assert_select "input#drink_intake_recorded_time[name=?]", "drink_intake[recorded_time]"
    end
  end
end
