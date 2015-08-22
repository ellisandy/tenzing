class Genre < ActiveRecord::Base
  attr_accessible :title, :user_id

  belongs_to :user
  has_many :books

  validates_presence_of :user
  validates_presence_of :title
end
<<<<<<< HEAD
# == Schema Information
#
# Table name: genres
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

=======
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
