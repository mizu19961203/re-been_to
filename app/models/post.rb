class Post < ApplicationRecord
	attachment :image
	validates :image, presence: true
	has_many :comments, dependent: :destroy
	# has_many :tags
	# has_many :routes
	belongs_to :country
	belongs_to :vaccine
	# mount_uploader :movie, MovieUpload
	# validates :movie, :presence => true
	belongs_to :user
end
