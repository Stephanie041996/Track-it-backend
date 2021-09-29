class Transaction < ApplicationRecord
  belongs_to :measurement
  validates :data, numericality: { only_float: true }
end
