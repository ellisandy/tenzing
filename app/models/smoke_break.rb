class SmokeBreak < ActiveRecord::Base
  attr_accessible :user_id, :recorded_time
  
  belongs_to :user
  validates :user, :presence => true
  
  def self.total_on(date)
    where("date(created_at) = ?",date).count
  end
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

