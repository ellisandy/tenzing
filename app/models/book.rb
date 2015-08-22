class Book < ActiveRecord::Base
  attr_accessible :author, :read, :title, :user_id, :genre_id

  belongs_to :user
  belongs_to :genre

  validates_presence_of :user
  validates_presence_of :author
  validates_presence_of :title
end
<<<<<<< HEAD
# == Schema Information
#
# Table name: books
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  author     :string(255)
#  user_id    :integer
#  read       :boolean
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  genre_id   :integer
#

=======
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
