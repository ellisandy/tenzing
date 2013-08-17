require 'spec_helper'

describe Book do

  it "should be valid" do
    FactoryGirl.build(:book).should be_valid
  end

  it "should require user" do
    FactoryGirl.build(:book, :user => nil).should have(1).error_on(:user)
  end
  
  it "should require title" do
    FactoryGirl.build(:book, :title=> '').should have(1).error_on(:title)
  end
  
  it "associates with user" do
    Book.new.should respond_to(:user)
  end

  it "responds to genre" do
     Book.new.should respond_to(:genre)
  end
end
