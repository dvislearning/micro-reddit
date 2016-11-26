class Post < ApplicationRecord
	validates :url, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: { case_sensitive: false }
	validates :user_id, presence: true
	belongs_to :user
	has_many :comments
end
