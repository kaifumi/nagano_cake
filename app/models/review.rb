class Review < ApplicationRecord
    belongs_to :product
    belongs_to :customer,optional: true

    validates :title, presence: true
    
    validates :rate, 
    presence: true

end
