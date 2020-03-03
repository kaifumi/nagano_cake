class CartProduct < ApplicationRecord

	validates :amount, presence: true

	belongs_to :customer,optional: true #seedで外した
	belongs_to :product
	
end
