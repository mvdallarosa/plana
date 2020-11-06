class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :commitments
  has_many :challenges, through: :commitments
  has_many :favorites
  has_one :footprint
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  # validates_format_of :first_name, with: /[a-z\s.-]/i, presence: true
  # validates :last_name, with: /[a-z\s.-]/i, presence: true
  # validates :username,  uniqueness: true, with: /\A[a-zA-Z0-9]+\z/, presence: true
  validates :city, presence: true


  # def current_challenge
  #   # date = Date.today
  #   # current_commitment = current_user.commitments.where(['start_date < ? AND end_date > ?', date, date])
  #   # return current_commitment.challenge
  #   current_user.commitments.last
  # end
end
