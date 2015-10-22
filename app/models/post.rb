class Post < ActiveRecord::Base
  has_many :tags, through: :posts_tags
  has_many :tags
  validates_presence_of :title, :content
end
