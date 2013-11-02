require 'spec_helper'

describe Possession do
   it "should be valid" do
      @user = FactoryGirl.create(:user)
      category = FactoryGirl.create(:category, :user => @user)
      FactoryGirl.build(:possession, :user => @user, :category => category).should be_valid
   end

   it "associates with user" do
      Possession.new.should respond_to(:user)
   end

   it "associates with category" do
      Possession.new.should respond_to(:category)
   end
end
# == Schema Information
#
# Table name: possessions
#
#  id          :integer         not null, primary key
#  category_id :integer
#  title       :string(255)
#  user_id     :integer
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

