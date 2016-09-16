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

bubble_tea = Category.create(name: 'bubble tea')
sandwiches = Category.create(name: 'sandwiches')
gelato = Category.create(name: 'gelato')

kft = Restaurant.create(name: 'kung fun', address: 'Södergatan 5', city: 'Märsta', zipcode: '195 34', country: 'Sweden', max_distance: 3)
taro = Item.create(name: 'taro', restaurant: kft, price: 5)
red_bean = Item.create(name: 'red bean', restaurant: kft, price: 4)

cb = Restaurant.create(name: 'caffe bene', address: 'Nymärstagatan 2', city: 'Märsta', zipcode: '195 30', country: 'Sweden', max_distance: 3)
RestaurantCategory.create(restaurant: cb, category: bubble_tea)
RestaurantCategory.create(restaurant: cb, category: sandwiches)
RestaurantCategory.create(restaurant: cb, category: gelato)
thai = Item.create(name: 'thai', restaurant: cb, price: 4, category: bubble_tea)
green_tea = Item.create(name: 'green tea', restaurant: cb, price: 3, category: bubble_tea)
teriyaki = Item.create(name: 'teriyaki chicken', restaurant: cb, price: 7, category: sandwiches)
ham_swiss = Item.create(name: 'ham and swiss', restaurant: cb, price: 6, category: sandwiches)
mango = Item.create(name: 'mango', restaurant: cb, price: 4, category: gelato)
shish = Restaurant.create(name: 'shish', address: 'Mjölnergatan 16', city: 'Märsta', zipcode: '195 53', country: 'Sweden', max_distance: 1)
coconut = Item.create(name: 'coconut', restaurant: shish, price: 5)
milk_tea = Item.create(name: 'milk tea', restaurant: shish, price: 3)

lee = User.create(email: 'lee@lee.com', password: 'hi', address: '12 Bartlett St', city: 'New Brunswick', zipcode: '08901')


# matrix = GoogleDistanceMatrix::Matrix.new
#     origin = GoogleDistanceMatrix::Place.new address: "#{User.first.address}, #{User.first.city} #{User.first.zipcode}"
#     destinations = Restaurant.all.map {|restaurant| "#{restaurant.address}, #{restaurant.city} #{restaurant.zipcode}"}.map {|location| GoogleDistanceMatrix::Place.new address: location}
#     matrix.origins << origin
#     destinations.each {|destination| matrix.destinations << destination}
#     filtered_restaurants = matrix.data.flatten.each_with_index.map {|datum, idx| Restaurant.all[idx].max_distance > datum.distance_in_meters/1000.to_f ? Restaurant.all[idx] : nil}.compact
