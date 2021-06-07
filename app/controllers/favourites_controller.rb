class FavouritesController < ApplicationController

  def index
    @favs = current_user.favourites.joins(:car).select('"cars".name,"cars".image_url,"cars".id').to_json
    json_response(@favs)
  end

  def create
    @car = Car.find_by!(id: params[:car_id])
    fav = current_user.favourites.create!(car: @car)
    json_response(fav, 201)
  end

  def delete
    @car = Car.find_by!(id: params[:car_id])
    fav = Favourite.find_by!(user: current_user, car: @car)
    fav.delete
    json_response({ deleted: true })
  end
end
