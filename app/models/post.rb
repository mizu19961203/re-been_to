class Post < ApplicationRecord

	has_many :comments, dependent: :destroy
	has_many :tags
	belongs_to :country
	belongs_to :user
	belongs_to :vaccines
	belongs_to :visas
end
