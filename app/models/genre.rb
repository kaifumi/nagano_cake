class Genre < ApplicationRecord

	validates :type, presence: true
	enum type:{

	}
	validates :sell_activated, inclusion: { in: [true, false] }

	has_many :products

end
