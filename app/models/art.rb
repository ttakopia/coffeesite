class Art < ApplicationRecord
	mount_uploaders :images, ImageUploader
	serialize :images, JSON
	geocoded_by :address
	after_validation :geocode
	acts_as_taggable # Alias for acts_as_taggable_on :tags
    acts_as_taggable_on :skills, :interests
end