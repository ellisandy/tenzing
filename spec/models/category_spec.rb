require 'spec_helper'

describe Category do
  it "should be valid" do

    FactoryGirl.build(:smoke_break).should be_valid
  end

  it "responds to user" do
     Category.new.should respond_to(:user)
  end

end
# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

