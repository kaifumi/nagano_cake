class Delivery < ApplicationRecord

	validates :postal_code,
	presence: true,
	format: {allow_blank: true,
		with: /\A[0-9]{3}-[0-9]{4}\z/,
		message: "は、〇〇〇-〇〇〇〇のように入力して下さい"
	}

	validates :address, presence: true
	validates :receiver, presence: true

	belongs_to :customer, optional: true

end
