class User < ActiveRecord::Base
	has_many :bids
	has_many :auctions, through: :bids

	validates :username, presence: true, uniqueness: true, length: { maximum: 20 }
	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
