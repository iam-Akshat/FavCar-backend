require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  let(:user) { create(:user) }
  let!(:cars) { create_list(:car, 10) }
  let(:headers) { valid_headers }

  describe 'GET /cars' do
    context 'when request is valid' do
      before { get '/cars', params: {}, headers: headers }

      it 'return cars' do
        expect(parsed_json_response).not_to be_empty
        expect(parsed_json_response.size).to eq(10)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'GET /cars/:id' do
    let(:car_id) { cars.first.id }
    before { get "/cars/#{car_id}", headers: headers }

    context 'when record exists' do
      it 'returns the car' do
        expect(parsed_json_response).not_to be_empty
        expect(parsed_json_response['car']['id']).to eq car_id
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when record does not exist' do
      let(:car_id) { 100 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Car/)
      end
    end
  end
end
