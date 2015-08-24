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
# == Schema Information
#
# Table name: books
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  author     :string(255)
#  user_id    :integer
#  read       :boolean
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  genre_id   :integer
#
