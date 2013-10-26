require File.dirname(__FILE__) + '/../spec_helper'

describe SmokeBreak do
  it "should be valid" do
    FactoryGirl.build(:smoke_break).should be_valid
  end
  it "creates a valid time"
end
# == Schema Information
#
# Table name: smoke_breaks
#
#  id            :integer         not null, primary key
#  user_id       :integer
#  recorded_time :datetime
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

