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
RestaurantCourse.destroy_all
Course.destroy_all
Category.destroy_all
RestaurantCategory.destroy_all

kftlogo = 'https://pbs.twimg.com/profile_images/478946624580767744/nmc8l9ig_400x400.png'
cblogo = 'http://res.heraldm.com/content/image/2016/03/31/20160331001007_0.jpg'
shishlogo = 'https://s-media-cache-ak0.pinimg.com/564x/a2/23/9a/a2239ad4939e4731b354aae7eee70f3b.jpg'

coffee = Category.create(name: 'coffee & tea')
subshop = Category.create(name: 'subshop')
italian = Category.create(name: 'Italian')

bubble_tea = Course.create(name: 'bubble tea')
sandwiches = Course.create(name: 'sandwiches')
gelato = Course.create(name: 'gelato')

kft = Restaurant.create(name: 'kung fun', address: 'Södergatan 5', 
	city: 'Märsta', zipcode: '195 34', country: 'Sweden', 
	max_distance: 3, logo: kftlogo)
RestaurantCategory.create(restaurant: kft, category: italian)
RestaurantCategory.create(restaurant: kft, category: coffee)
RestaurantCourse.create(restaurant: kft, course: bubble_tea)
RestaurantCourse.create(restaurant: kft, course: sandwiches)
RestaurantCourse.create(restaurant: kft, course: gelato)
taro = Item.create(name: 'taro', restaurant: kft, price: 5)
red_bean = Item.create(name: 'red bean', restaurant: kft, price: 4)

cb = Restaurant.create(name: 'caffe bene', address: 'Nymärstagatan 2', 
	city: 'Märsta', zipcode: '195 30', country: 'Sweden', 
	max_distance: 3, logo: cblogo)
RestaurantCategory.create(restaurant: cb, category: coffee)
RestaurantCourse.create(restaurant: cb, course: bubble_tea)
RestaurantCourse.create(restaurant: cb, course: sandwiches)
RestaurantCourse.create(restaurant: cb, course: gelato)
thai = Item.create(name: 'thai', restaurant: cb, price: 4, course: bubble_tea)
green_tea = Item.create(name: 'green tea', restaurant: cb, price: 3, course: bubble_tea)
teriyaki = Item.create(name: 'teriyaki chicken', restaurant: cb, price: 7, course: sandwiches)
ham_swiss = Item.create(name: 'ham and swiss', restaurant: cb, price: 6, course: sandwiches)
mango = Item.create(name: 'mango', restaurant: cb, price: 4, course: gelato)


shish = Restaurant.create(name: 'shish', address: 'Mjölnergatan 16', 
	city: 'Märsta', zipcode: '195 53', country: 'Sweden', 
	max_distance: 1, logo: shishlogo)
RestaurantCategory.create(restaurant: shish, category: subshop)
RestaurantCourse.create(restaurant: shish, course: bubble_tea)
RestaurantCourse.create(restaurant: shish, course: sandwiches)
RestaurantCourse.create(restaurant: shish, course: gelato)
coconut = Item.create(name: 'coconut', restaurant: shish, price: 5)
milk_tea = Item.create(name: 'milk tea', restaurant: shish, price: 3)

lee = User.create(email: 'lee@lee.com', password: 'hi', address: '12 Bartlett St', city: 'New Brunswick', zipcode: '08901')
