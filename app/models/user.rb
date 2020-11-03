class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :challenges, through: :commitments
  has_many :favorites
  has_one :footprint
  has_one_attached :photo
  validates_format_of :first_name, :with => /[a-z\s.-]/i, presence: true
  validates :last_name, :with => /[a-z\s.-]/i, presence: true
  validates :username, presence: true, uniqueness: true
  validates :city, presence: true

  def current_challenge
    date = Date.today
    current_commitment = current_user.commitments.where(['start_date < ? AND end_date > ?', date, date])
    return current_commitment.challenge
  end
end
