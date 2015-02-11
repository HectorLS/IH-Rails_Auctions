class Bid < ActiveRecord::Base
	belongs_to :auction #singular
	belongs_to :user

	validates :amount, numericality: true

	validate :proper_amount

	def proper_amount
		last_bid = Auction.find(auction_id).bids.last.amount
		# If auctions have no bids 
		if last_bid.nil?
			last_bid = 0
		end
		if amount <= last_bid
			errors.add(:amount, "Bid more")
		end
	end

end
