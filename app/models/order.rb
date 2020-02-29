class Order < ApplicationRecord


	#""でキーを囲む

	enum payment_option:{
	"銀行振込": 0,
	"クレジットカード": 1
	}

	enum transaction_status:{
	"入金待ち": 0,
	"入金確認": 1,
	"製作中": 2,
	"O発送準備中": 3,
	"発送済み": 4
	}

	
	
	validates :delivery_price, presence: true
	validates :total_price, presence: true

	validates :postal_code,
	numericality: { only_interger: true },
	format: {with: /\A[0-9]{3}-[0-9]{4}\z/,
	message: "〇〇〇-〇〇〇〇のように入力して下さい"
	}

	validates :address, presence: true
	validates :receiver, presence: true

	has_many :order_details
	belongs_to :customer

end
