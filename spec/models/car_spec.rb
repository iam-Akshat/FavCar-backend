require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :manufacturer }
    it { should validate_presence_of :year }
    it { should validate_presence_of :description }
    it { should validate_presence_of :image_url }
    it { should validate_presence_of :price }
  end
end
