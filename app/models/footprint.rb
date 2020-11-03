class Footprint < ApplicationRecord
  belongs_to :user
  validates :food, presence: true
  validates :mobility, presence: true
  validates :household, presence: true
end
