class User < ApplicationRecord
  # has_many :followers, class_name: "User", foreign_key: "following_user_id"
  # belongs_to :following_user, class_name: "User", optional: true
  has_many :following
  has_many :followers, class_name: "Following", foreign_key: "user_id"
end
