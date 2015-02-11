class Auction < ActiveRecord::Base
	has_many :bids
	has_many :users, through: :bids

	validates :name, presence: true, length: { maximum: 30 }
	validates :end_date, presence: true

	validate :proper_date

	def proper_date
		if end_date < Date.today
			errors.add( :end_date, "You're not Marty McFly, put a future date")
		end
	end


	# def available_auction
			# auctions = Auction.all

		# auctions.each do |auction|
		# current_time = Date.today

		# 	if current_time > auction.
		# 	end
		# end
	# end
	
end

# FECHA , PUJAS MAS ALTA que actual para aceptar puja