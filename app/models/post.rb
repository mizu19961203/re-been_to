class Post < ApplicationRecord
	attachment :image
	validates :image, presence: true
	has_many :comments, dependent: :destroy
	# has_many :tags
	# has_many :routes
	belongs_to :country
	belongs_to :vaccine
	mount_uploader :video, VideoUploader
	belongs_to :user
end
