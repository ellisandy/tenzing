require 'spec_helper'

describe Genre do
  it "should be valid" do
    FactoryGirl.build(:genre).should be_valid
  end

  it "should require user" do
    FactoryGirl.build(:genre, :user => nil).should have(1).error_on(:user)
  end
  
  it "should require title" do
    FactoryGirl.build(:genre, :title=> '').should have(1).error_on(:title)
  end
  
  it "associates with user" do
    Genre.new.should respond_to(:user)
  end
end
