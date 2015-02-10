class AuctionsController < ApplicationController

	def index
		@auctions = Auction.all
	end

	def new
		@auction = Auction.new
	end

	def create
		@auction = Auction.new auction_params

		if @auction.save
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	def show
		@auction = Auction.find params[:id]
	end

	def destroy
		@auction = Auction.find params[:id]
		@auction.destroy
		redirect_to action: 'index'
	end

	private
	def auction_params
		params.require(:auction).permit(:name, :end_date)
	end
end
