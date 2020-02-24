class Product < ApplicationRecord

	validates :name, presence: true
	validates :image_id, presence: true

	validates :price,
	presence: true,
	format: {
		with: /\A[0-9]+\z/,
        message: "半角の数字のみ入力して下さい"
	}
	
	validates :selling_status, inclusion: { in: [true, false] }
	validates :created_at, presence: true
	validates :update_at, presence: true

	belongs_to :genre
	has_many :order_details
	has_many :cart_products

	attachment :image

end
