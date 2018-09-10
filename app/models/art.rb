class Art < ApplicationRecord
  has_many :menus
  has_many :favorites, dependent: :destroy

  accepts_nested_attributes_for :menus, allow_destroy: true
	mount_uploaders :images, ImageUploader
	serialize :images, JSON
	geocoded_by :address
	after_validation :geocode
	acts_as_taggable # Alias for acts_as_taggable_on :tags
    acts_as_taggable_on :coffeebeans, :interests
    def page_incr
      REDIS.zincrby "arts/", 1, "#{@art.id}"
  	end	
  	def railsrank
      REDIS.zrevrange "arts/", 0, 19, withscores: true
  	end
    def like_user(user_id)
      favorites.find_by(user_id: user_id)
    end
end