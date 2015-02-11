class Bid < ActiveRecord::Base
	belongs_to :auction #singular
	belongs_to :user

	validates :amount, numericality: true

	validate :proper_amount


	private
		def proper_amount
		# Conditionals -if with -any act like -Unless conditionals
		#Create this because when we create a auction,
		# this have no amount field, this is only created when we bids 
		if Auction.find(auction_id).bids.any?
			last_bid = Auction.find(auction_id).bids.last.amount
		else
			last_bid = 0
		end
			if amount <= last_bid
				errors.add(:amount, "Bid more")
			end
		end

end
