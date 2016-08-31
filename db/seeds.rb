# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Item.destroy_all
User.destroy_all

kft = Restaurant.create(name: 'kung fu tea', address: '1731 NJ-27', city: 'Edison', zipcode: '08817', max_distance: 3)
taro = Item.create(name: 'taro', restaurant: kft, price: 5)
red_bean = Item.create(name: 'red bean', restaurant: kft, price: 4)

cb = Restaurant.create(name: 'caffe bene', address: '365 George St', city: 'New Brunswick', zipcode: '08901', max_distance: 3)
thai = Item.create(name: 'thai', restaurant: cb, price: 4)
green_tea = Item.create(name: 'green tea', restaurant: cb, price: 3)

coco = Restaurant.create(name: 'coco', address: '12 John St', city: 'New York', zipcode: '10038', max_distance: 1)
coconut = Item.create(name: 'coconut', restaurant: coco, price: 5)
milk_tea = Item.create(name: 'milk tea', restaurant: coco, price: 3)

lee = User.create(email: 'lee@lee.com', password: 'hi', address: '12 Bartlett St', city: 'New Brunswick', zipcode: '08901')

# matrix = GoogleDistanceMatrix::Matrix.new
# origin = GoogleDistanceMatrix::Place.new address: "#{User.first.address}, #{User.first.city} #{User.first.zipcode}"
# destinations = Restaurant.all.map {|restaurant| "#{restaurant.address}, #{restaurant.city} #{restaurant.zipcode}"}.map {|location| GoogleDistanceMatrix::Place.new address: location}
# matrix.origins << origin
# destinations.each {|destination| matrix.destinations << destination}
# filtered_restaurants = matrix.data.flatten.each_with_index.map {|datum, idx| Restaurant.all[idx].max_distance > datum.distance_in_meters/1000.to_f ? Restaurant.all[idx] : nil}.compact
