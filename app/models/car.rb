class Car < ApplicationRecord
  validates_presence_of :name, :year, :description, :manufacturer, :price, :image_url
end
