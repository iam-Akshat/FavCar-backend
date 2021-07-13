require 'rails_helper'

RSpec.describe 'Favourites', type: :request do
  let(:user) { create(:user) }
  let!(:cars) { create_list(:car, 10) }
  let(:headers) { valid_headers }
  let(:valid_car_id) { cars.first.id }
  describe 'POST /cars/:car_id/favourite' do
    context 'favouriting a existing car' do
      before { post "/cars/#{valid_car_id}/favourite", headers: headers }
      it 'adds car to favourites to logged in user' do
        expect(user.favourites.first).not_to eq(nil)

        expect(user.favourites.first.car_id).to eq(valid_car_id)
        expect(user.favourites.first.user_id).to eq(user.id)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'unfavouriting a favourite car' do
      before do
        create(:favourite, user_id: user.id, car_id: valid_car_id)
        delete "/cars/#{valid_car_id}/unfavourite", headers: headers
      end
      it 'remove car for from favourites' do
        user.reload
        expect(user.favourites.to_a).to be_empty
      end

      it 'returns 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'interacting with a non existing car' do
      it 'returns status code 404' do
        post '/cars/1000/favourite', headers: headers
        expect(response).to have_http_status(404)
      end

      it 'returns status code 404' do
        delete '/cars/1000/unfavourite', headers: headers
        expect(response).to have_http_status(404)
      end
    end
  end
end
