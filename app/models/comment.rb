class Comment < ApplicationRecord
	validates :user_id, presence: true
	validates :post_id, presence: true
	validates :content, presence: true, length: { minimum: 1, maximum: 350 }
	belongs_to :user
	belongs_to :post
end
