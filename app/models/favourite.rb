class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates_uniqueness_of :car, scope: :user
end
