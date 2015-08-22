class Possession < ActiveRecord::Base
  attr_accessible :category_id, :description, :title, :user_id

  belongs_to :category
  belongs_to :user
end
<<<<<<< HEAD
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

=======
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
