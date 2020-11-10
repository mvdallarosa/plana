class Follow < ApplicationRecord
  belongs_to :follower, foreign_key: 'user_id', class_name: 'User' #follower_id
  belongs_to :following, foreign_key: 'following_id', class_name: 'User'
end
