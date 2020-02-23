class Genre < ApplicationRecord

	validates :type, presence: true
	enum type:{

	}
	validates :sell_activated, inclusion: { in: [true, false] }
	validates :created_at, presence: true
	validates :update_at, presence: true

	has_many :products

end
