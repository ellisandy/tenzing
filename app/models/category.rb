class Category < ActiveRecord::Base
  attr_accessible :title, :user_id
  has_many :possessions
  
  belongs_to :user
end
