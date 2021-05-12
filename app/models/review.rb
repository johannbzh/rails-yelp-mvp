class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, { inclusion: 0..5 }
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
end
