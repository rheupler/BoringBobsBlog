class Tag < ActiveRecord::Base
  has_many :posts, through: :posts_tags
  has_many :posts
  validates_presence_of :name
end
