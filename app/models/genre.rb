class Genre < ApplicationRecord

	validates :type, presence: true
	validates :sell_activated, inclusion: { in: [true, false] }
	# validates :created_at, presence: true 
	# validates :updated_at, presence: true

	# attr_accessible :data, :type
	self.inheritance_column = :_type_disabled

end
