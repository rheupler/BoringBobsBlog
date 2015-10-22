class Comment < ActiveRecord::Base
  # validates :image, :presence => true
  validates :sentence, :presence => true
  belongs_to :post
  belongs_to :user

end
