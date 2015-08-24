require 'rails_helper'

RSpec.describe "drink_intakes/edit", :type => :view do
  before(:each) do
    @drink_intake = assign(:drink_intake, DrinkIntake.create!(
      :user_id => 1,
      :recorded_time => ""
    ))
  end

  it "renders the edit drink_intake form" do
    render

    assert_select "form[action=?][method=?]", drink_intake_path(@drink_intake), "post" do

      assert_select "input#drink_intake_user_id[name=?]", "drink_intake[user_id]"

      assert_select "input#drink_intake_recorded_time[name=?]", "drink_intake[recorded_time]"
    end
  end
end
