class Item < ApplicationRecord
  belongs_to :category
  has_one_attached :photo
  validates :name, presence: true
  validates :url, presence: true
  validates :description, presence: true
end
