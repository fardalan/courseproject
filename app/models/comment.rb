class Comment < ActiveRecord::Base
  attr_accessible :post_id, :content

  validates :post_id, presence: true
  validates :content, length: { minimum: 2 }

end
