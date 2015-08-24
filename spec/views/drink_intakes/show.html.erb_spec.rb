require 'rails_helper'

RSpec.describe "drink_intakes/show", :type => :view do
  before(:each) do
    @drink_intake = assign(:drink_intake, DrinkIntake.create!(
      :user_id => 1,
      :recorded_time => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
