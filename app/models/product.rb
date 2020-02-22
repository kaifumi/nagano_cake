class Product < ApplicationRecord

	genre_id
	validates :name, presence: true
	content
	validates :image_id, presence: true
	validates :price, presence: true
	validates :selling_status, inclusion: { in: [true, false] }
	validates :created_at, presence: true
	validates :update_at, presence: true

end
