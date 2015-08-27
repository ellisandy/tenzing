class SmokeBreak < ActiveRecord::Base
  attr_accessible :user_id, :recorded_time
  
  belongs_to :user
  validates :user, :presence => true


  def self.total_on(t)
    SmokeBreak.all(:conditions => ["recorded_time > ? AND recorded_time < ?", t.at_beginning_of_day, t.tomorrow.at_beginning_of_day]).count
  end
  
  def self.count_per_hour(t)
    SmokeBreak.all(:conditions => ["recorded_time > ? AND recorded_time < ?", t.beginning_of_hour, t.end_of_hour]).count
  end
  
  def self.date_range_per_hour
    @date = DateTime.now

    @date_array=[]
    @data_array=[]
    i = 0
    loop do 
      @date_array.push(@date.advance(:hours => -i))
      break if i==335
      i += 1
    end 
    @date_array.reverse!
  end
  
  def self.last_two_weeks_per_hour(date)
    date.each do |date|
      @data_array.push(self.count_per_hour(date))
    end
    return @data_array
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

