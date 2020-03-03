class Product < ApplicationRecord

	validates :name, presence: true
	validates :image_id, presence: true
	validates :genre_id, presence: true

	validates :price,
	presence: true,
	format: {allow_blank: true,
		with: /\A[0-9]+\z/,
        message: "半角の数字のみ入力して下さい"
	}
	
	validates :selling_status,
	inclusion: { in: [true, false] }

	acts_as_paranoid
	# 論理削除

	belongs_to :genre, optional: true
	has_many :order_details
	has_many :cart_products
	
	#口コミ専用テーブル
	has_many :reviews

	attachment :image

end
