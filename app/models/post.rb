class Post < ApplicationRecord
	attachment :image
	has_many :comments, dependent: :destroy
	# has_many :tags
	# has_many :routes
	belongs_to :country
	belongs_to :user
	belongs_to :vaccine
	# mount_uploader :movie, MovieUpload
	# validates :movie, :presence => true
end
