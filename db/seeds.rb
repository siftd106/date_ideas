# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create(city_name: 'Grand Rapids')

Price.create(price_range: 'Free')
Price.create(price_range: '$0 - $20')
Price.create(price_range: '$20 - $50')
Price.create(price_range: '$50+')

Duration.create(duration: '0 to 1 hours')
Duration.create(duration: '1 to 2 hours')
Duration.create(duration: '2 to 3 hours')
Duration.create(duration: '4 + hours')

Destination.create(destinations: '1')
Destination.create(destinations: '2')
Destination.create(destinations: '3')
Destination.create(destinations: '4+')

Idea.create(description: 'Dress in nice clothes with your swim suit on underneath. Go to the 4th floor of the JW Marriot and sneak in to the hot tub and steam room.',
            price_range_id: 1,
            duration_id: 3,
            destination_id: 3,
            location_id: 1)
Idea.create(description: 'Go to Blandford nature center and immerse yourself in outdoorsy stuff. Have a picnic in Aman park afterwards.',
            price_range_id: 1,
            duration_id: 3,
            destination_id: 3,
            location_id: 1)
Idea.create(description: 'Head to Gerald R Ford Museum and sit in the situation room. Pretend you are the president you have to address the nation regarding a meteor that is about to take out the world.',
            price_range_id: 1,
            duration_id: 3,
            destination_id: 3,
            location_id: 1)
