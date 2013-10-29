class Possession < ActiveRecord::Base
  attr_accessible :category_id, :description, :title, :user_id

  belongs_to :category
  belongs_to :user
end
