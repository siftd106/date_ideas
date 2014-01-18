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

Stops.create(stop_range: '1')
Stops.create(stop_range: '2')
Stops.create(stop_range: '3')
Stops.create(stop_range: '4+')
