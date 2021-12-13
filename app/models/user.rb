class User < ApplicationRecord
  validates :uid, uniqueness: true
  validates :uid, :password, presence: true
  has_many :restaurants, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_restaurants, through: :likes, source: :restaurant
  validates :password, presence: true, confirmation: true
  
  attr_accessor :password, :password_confirmation
  
  def password=(val)
    if val.present?
      self.pass = BCrypt::Password.create(val)
    end
    @password = val
  end
end