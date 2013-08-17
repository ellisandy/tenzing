class Book < ActiveRecord::Base
  attr_accessible :author, :read, :title, :user_id, :genre_id

  belongs_to :user
  belongs_to :genre

  validates_presence_of :user
  validates_presence_of :author
  validates_presence_of :title
end
