class SmokeBreak < ActiveRecord::Base
  attr_accessible :user, :recorded_time
  
  belongs_to :user
  validates :user, :presence => true
  
  def self.total_on(time)
    where("time(recorded_time) = ?",time).count
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

