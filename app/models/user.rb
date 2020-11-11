class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :commitments
  has_many :challenges, through: :commitments
  has_many :favorites, dependent: :destroy
  has_one :footprint

  has_many :follows
  has_many :follower_relationships, foreign_key: :following_id, class_name: "Follow"
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :user_id, class_name: "Follow"
  has_many :following, through: :following_relationships, source: :following

  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  # validates_format_of :first_name, with: /[a-z\s.-]/i, presence: true
  # validates :last_name, with: /[a-z\s.-]/i, presence: true
  # validates :username,  uniqueness: true, with: /\A[a-zA-Z0-9]+\z/, presence: true
  validates :city, presence: true

  def total_footprint
    self.footprint.mobility + self.footprint.food + self.footprint.household
  end

  def commitment_done?(commitment)
    commitment.end_date <= Date.today
  end

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def is_following(followed_user_id)
    relationship = Follow.find_by(user_id: self.id, following_id: followed_user_id)
    return true if relationship
  end

  def already_liked(item_id)
    favorite = Favorite.find_by(user_id: self.id, item_id: item_id)
    return favorite
  end
end
