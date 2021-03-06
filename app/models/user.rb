class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy
  has_many :locations, as: :locationable, dependent: :destroy
  has_many :comments, as: :commentable
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
