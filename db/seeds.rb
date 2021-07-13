# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rubocop:disable Layout/LineLength
intitial_cars_attributes = [
  {
    name: 'Audi A6',
    manufacturer: 'Audi',
    image_url: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/39472/a6-exterior-left-front-three-quarter.jpeg',
    year: 2020,
    price: 56_000.0,
    description: 'Audi has launched the eight generation A6 in India with fresh set of cosmetic and feature updates. The premium sedan is available in two trims – Premium Plus and Technology. The new model is underpinned by the parent company Volkswagen’s MLB platform.

        Exterior

        The exterior design on this new car is evolutionary but has moved from the rounded edges of the fourth generation A6 to a sharper and sportier design for this new car. We’ve taken a liking to the rather space age looking LED lighting package both in the front and rear and they do well to add to the car’s futuristic appearance.

        Interior '
  },

  { name: 'Ferrari-Portofino',
    manufacturer: 'Ferrari',
    image_url: 'https://imgd.aeplcdn.com/664x374/cw/ec/36258/Ferrari-Portofino-Exterior-137289.jpg',
    year: 2020,
    price: 85_600.0,
    description: 'When you think about fast cars, the first name that pops up in to your mind is Ferrari. Known for its motorsport legacy, the Italian carmaker had launched its convertible grand-tourer, the Portofino last year in 2017. It replaced the California T, one of its most successful cars and is being brought to India as a completely built unit.

    Well, it is a typical Ferrari, low-slung, hunkered, raked and aggressive. The large air dam covers most of the fascia flanked by two fluted air intakes while the kinked headlamps remind us of the 812. The contoured hood with the flush air intakes, the slits on the fender and the flowing lines are pure magic from Pininfarina. The single round tail lamps hark back to the 90s but the carbon-fibre rear splitter and quad exhaust give it the modern touch.' },

  { name: 'BMW X1',
    manufacturer: 'BMW',
    image_url: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/45242/bmw-x1-facelift-left-side-view0.jpeg',
    year: 2021,
    price: 40_600.0,
    description: 'BMW X1 gets gets fresh set of cosmetic and feature updates over its predecessor. The petrol sDrive20i is available in SportX and xLine variants, while the diesel sDrive20d is available in xLine and M Sport variants.

    Exterior

    The BMW X1 features large kidney grilles which are flanked by sleek LED headlamps. The bumper design has have been revised and it now features slim LED fog lamps and large airdams. The side profile looks more or less similar to the current model except for a set of redesigned alloy wheels. The rear section gets new tail lamps which are complimented by a new bumper featuring twin exhausts' }
]
# rubocop:enable Layout/LineLength
intitial_cars_attributes.each do |car|
  Car.create!(car)
end
