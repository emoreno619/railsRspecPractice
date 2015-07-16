class User < ActiveRecord::Base
	validates :username, presence: true
	validates :email, presence: true
	has_many :posts, dependent: :destroy
end