class Post < ApplicationRecord
	attachment :image
	has_many :comments, dependent: :destroy
	# has_many :tags
	# has_many :routes
	belongs_to :country
	belongs_to :vaccine
	belongs_to :user
	mount_uploader :video, VideoUploader

# 投稿検索
	scope :post_search, -> (search_params) do
	    vaccine_select(search_params[:vaccine][:id])
	    .country_select(search_params[:country][:id])
	end

	scope :vaccine_select, -> (vaccine)   {
		where(['vaccine_id = ?', "#{vaccine}"]) if vaccine.present?
	}

	scope :country_select, -> (country)   {
	    where(['country_id = ?', "#{country}"]) if country.present?
	}

end
