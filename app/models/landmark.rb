class Landmark < ApplicationRecord
  validates :name, presence: true, length: {maximum: 140, minimum: 3}
  validates :location, presence: true, length: {maximum: 100, minimum: 3}
end
