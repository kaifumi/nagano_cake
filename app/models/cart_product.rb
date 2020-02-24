class CartProduct < ApplicationRecord

	validates :amount, presence: true

	belongs_to :customer
	belongs_to :product
	
end
