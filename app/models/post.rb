class Post < ApplicationRecord
	attachment :image
	# has_many :comments, dependent: :destroy
	# has_many :tags
	# belongs_to :country
	belongs_to :user
	# belongs_to :vaccine
	# belongs_to :visa
	# mount_uploader :movie, MovieUploader
	# validates :movie, :presence => true
end
