class OrderDetail < ApplicationRecord

	validates :purchase_price, presence: true
	validates :amount, presence: true

	validates :product_status, presence: true
	enum product_status:{
		"着手不可": 0,
		"製作待ち": 1,
		"製作中": 2,
		"製作完了": 3
	}


	belongs_to :product
	belongs_to :order

end
