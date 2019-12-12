class Post < ApplicationRecord

	# has_many :comments, dependent: :destroy
	# has_many :tags
	# belongs_to :country
	belongs_to :user
	# belongs_to :vaccine
	# belongs_to :visa
end
