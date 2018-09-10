class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :art, counter_cache: :favorites_count
end