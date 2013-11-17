class CoffeeIntake < ActiveRecord::Base
  attr_accessible :recorded_time, :user_id

  belongs_to :user
  validates :user, :presence => true

  def self.total_on(t)
    SmokeBreak.all(:conditions => ["recorded_time > ? AND recorded_time < ?", t.at_beginning_of_day, t.tomorrow.at_beginning_of_day]).count
  end
end
