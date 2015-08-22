require File.dirname(__FILE__) + '/../spec_helper'

describe SmokeBreak do
  it "should be valid" do
    FactoryGirl.build(:smoke_break).should be_valid
  end
<<<<<<< HEAD
  it "creates a valid time"
=======
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
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

