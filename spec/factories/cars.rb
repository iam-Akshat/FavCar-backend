FactoryBot.define do
  factory :car do
    name { Faker::Vehicle.model }
    image_url { Faker::LoremFlickr.image }
    manufacturer { Faker::Vehicle.manufacture }
    year { Faker::Date.between(from: '1900-01-01', to: Date.today).year }
    price { rand 100_000 }
    description { Faker::Vehicle.standard_specs.join('\n') }
  end
end
