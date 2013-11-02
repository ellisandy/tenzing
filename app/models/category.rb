class Category < ActiveRecord::Base
  attr_accessible :title, :user_id
  has_many :possessions
  
  belongs_to :user
end
# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

