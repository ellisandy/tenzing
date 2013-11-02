class Grocery < ActiveRecord::Base
  attr_accessible :item, :location, :user_id
end
# == Schema Information
#
# Table name: groceries
#
#  id         :integer         not null, primary key
#  item       :string(255)
#  location   :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

