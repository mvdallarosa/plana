class Challenge < ApplicationRecord
  has_many :commitments
  validates :category, presence: true
  validates :information, presence: true
  validates :impact, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :duration, presence: true, numericality: { only_integer: true }
end
