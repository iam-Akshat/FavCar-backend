class CarsController < ApplicationController
  def index
    @cars = Car.all.pluck
    json_response @cars
  end

  def show
    @car = Car.find(params[:id])
    json_response(@car)
  end
end
