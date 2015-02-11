class Bid < ActiveRecord::Base
	belongs_to :auction #singular
	belongs_to :user

	validates :amount, numericality: true
end
