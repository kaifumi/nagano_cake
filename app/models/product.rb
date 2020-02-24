class Product < ApplicationRecord

	validates :name, presence: true
	validates :image_id, presence: true
	validates :price, presence: true
	validates :selling_status, inclusion: { in: [true, false] }
	validates :created_at, presence: true
	validates :update_at, presence: true
end
