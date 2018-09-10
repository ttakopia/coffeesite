class User < ApplicationRecord
	authenticates_with_sorcery!
	has_many :favorites, dependent: :destroy
	has_many :arts, through: :favorites

	validates :password, length: {minimum: 6}
	validates :password, confirmation: true
 	validates :password_confirmation, presence: true
    validates :email, uniqueness: true
end
