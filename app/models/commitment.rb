class Commitment < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  validates :start_date, presence: true
  validates :end_date, presence: true
end
