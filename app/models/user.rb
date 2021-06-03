class User < ApplicationRecord
  has_secure_password

  has_many :favourites
  has_many :favourite_cars, through: :favourites, source: :car

  validates_presence_of :name, :email, :password_digest

  validates_uniqueness_of :email

  validates :password, length: { minimum: 6, maximum: 20 }, on: :create

  def user_info
    { liked: favourites.pluck(:car_id), name: name }
  end
end
