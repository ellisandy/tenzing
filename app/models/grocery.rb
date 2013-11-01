class Grocery < ActiveRecord::Base
  attr_accessible :item, :location, :user_id
end
