class Post < ActiveRecord::Base
  has_many :posts_tags
  has_and_belongs_to_many :tags
  validates_presence_of :title, :content
end
