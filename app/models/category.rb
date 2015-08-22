class Category < ActiveRecord::Base
  attr_accessible :title, :user_id
<<<<<<< HEAD
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

=======

  belongs_to :user
end
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
