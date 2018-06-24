class Art < ApplicationRecord
	mount_uploaders :images, ImageUploader
	serialize :images, JSON
	geocoded_by :address
	after_validation :geocode
end