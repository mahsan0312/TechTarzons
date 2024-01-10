class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :articles
  has_many :user_roles
  has_many :roles, through: :user_roles
  validates :name, presence: true
end
