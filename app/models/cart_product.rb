class CartProduct < ApplicationRecord

	validates :amount, presence: true
	validates :created_at, presence: true
	validates :update_at, presence: true

	belongs_to :customer
	belongs_to :product
	
end
