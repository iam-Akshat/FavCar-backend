class CarsController < ApplicationController
  def index
    @cars = Car.all.as_json(only: %i[id name image_url])
    json_response @cars
  end

  def show
    @car = Car.find(params[:id])
    user_liked = false
    begin
      Favourite.find_by(user_id: current_user.id, car_id: @car.id)
      user_liked = true
    rescue StandardError
      user_liked = false
    end
    json_response({ car: @car, user_liked: user_liked })
  end
end
