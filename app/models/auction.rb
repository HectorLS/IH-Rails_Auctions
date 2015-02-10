class Auction < ActiveRecord::Base
	has_many :bids
	has_many :users, through: :bids

	validates :name, presence: true, length: { maximum: 30 }
	validates :end_date, presence: true

end
