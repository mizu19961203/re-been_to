class Post < ApplicationRecord
	attachment :image
	has_many :comments, dependent: :destroy
	# has_many :tags
	# has_many :routes
	belongs_to :country
	belongs_to :vaccine
	belongs_to :user
	mount_uploader :video, VideoUploader
end
