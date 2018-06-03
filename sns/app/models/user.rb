class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments
  has_many :follower_relations, foreign_key: "followed_id", class_name: "Follow"
  has_many :followers, through: :follower_relations, source: :follower
  has_many :following_relation, foreign_key: "follower_id", class_name: "Follow"
  has_many :followings, through: :following_relation, source: :followed
<<<<<<< HEAD
  mount_uploader :avatar, AvatarUploader
=======
  
>>>>>>> af4017824b688259477c27d0c7e3d0a0d4b38209
end
