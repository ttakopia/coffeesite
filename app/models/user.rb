class User < ApplicationRecord
	authenticates_with_sorcery! do |config|
        config.authentications_class = Authentication
    end
    has_many :authentications, :dependent => :destroy
    accepts_nested_attributes_for :authentications
	has_many :favorites, dependent: :destroy
	has_many :arts
	validates :password, length: {minimum: 6}
	validates :password, confirmation: true
 	validates :password_confirmation, presence: true
    validates :email, uniqueness: true

    enum role: {
    	member: 1,
    	author: 2,
    	admin: 3
    }
end
