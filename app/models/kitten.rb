class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true, numericality: { in: 1..25 }
  validates :cuteness, presence: true, numericality: { in: 1..10 }
  validates :softness, presence: true, numericality: { in: 1..10 }
end
