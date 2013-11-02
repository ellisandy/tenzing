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

  it "responds to books" do
     Genre.new.should respond_to(:books)
  end
end
# == Schema Information
#
# Table name: genres
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

