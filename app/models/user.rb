class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :confirmable
  # belongs_to :analyze
  has_many :posts
  has_many :comments
  has_many :likes, dependent: :destroy
  # has_many :unlikes, dependent: :destroy
end
