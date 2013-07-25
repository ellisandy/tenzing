class Genre < ActiveRecord::Base
  attr_accessible :title, :user_id

  belongs_to :user

  validates_presence_of :user
  validates_presence_of :title
end
