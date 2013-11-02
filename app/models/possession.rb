class Possession < ActiveRecord::Base
  attr_accessible :category_id, :description, :title, :user_id

  belongs_to :category
  belongs_to :user
end
# == Schema Information
#
# Table name: possessions
#
#  id          :integer         not null, primary key
#  category_id :integer
#  title       :string(255)
#  user_id     :integer
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

