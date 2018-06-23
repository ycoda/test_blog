class User < ApplicationRecord
  has_many :blogs
  validates :name, :password, presence: true
  validates :name, uniqueness: true
end
