require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password_digest }

    it { should validate_uniqueness_of :email }

    it { should validate_length_of(:password).is_at_least(6).is_at_most(20) }
  end

  describe 'associations' do
    it { should have_many :favourites }
    it { should have_many :favourite_cars }
  end
end
