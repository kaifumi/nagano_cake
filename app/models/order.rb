class Order < ApplicationRecord


	#""でキーを囲む

	enum payment_option:{
	"銀行振込": 0,
	"クレジットカード": 1
	}
	#任意のキーを指定させる
	# validates :payment_option,
	# inclusion: {
	# 	in: Order.payment_option.keys,
	# 	message: "を指定してください"
	# }
# 	validates :payment_option,
#   inclusion: {
#     in: Order.payment_option.keys, 
#     message: 'を選択してください'
#   }

  STATUS_VALUES = ["銀行振込", "クレジットカード"]


  validates :payment_option, inclusion: { in: STATUS_VALUES }

	enum transaction_status:{
	"入金待ち": 0,
	"入金確認": 1,
	"製作中": 2,
	"発送準備中": 3,
	"発送済み": 4
	}

	
	
	validates :delivery_price, presence: true
	validates :total_price, presence: true

	validates :postal_code,
	format: {with: /\A[0-9]{3}-[0-9]{4}\z/,
	message: "〇〇〇-〇〇〇〇のように入力して下さい"
	}

	validates :address, presence: true
	validates :receiver, presence: true

	has_many :order_details
	belongs_to :customer

end
