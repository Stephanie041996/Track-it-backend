class Measurement < ApplicationRecord
    has_many :transactions
    validates :category, presence: true, length: { minimum: 3, maximum: 24 }

end
