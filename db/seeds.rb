require 'csv'
require 'pry'
require "readline"

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
Type.destroy_all
ItemType.destroy_all


# csv_text = File.read(Rails.root.join('db', 'pizza.csv'))
#

Restaurant.create(name: 'Pizza Guy', address: 'Tingvallavägen 5', zipcode: '195 35', city: 'Märsta', country: 'Sweden', phone: '0859127600', max_distance: 50)

CSV.foreach("#{Rails.root}/db/pizza.csv") do |row|
	if row[0] != 'Course Name' && row[0].present?
		course = Course.find_or_create_by(name: row[0], description: row[1])
		RestaurantCourse.find_or_create_by(restaurant: Restaurant.first, course: course)
		item = Item.find_or_create_by(restaurant: Restaurant.first, course: course, name: row[2], description: row[3])
		type = Type.find_or_create_by(name: row[4])
		ItemType.create(item: item, type: type, price: row[5])
	end
end

# kftlogo = 'https://pbs.twimg.com/profile_images/478946624580767744/nmc8l9ig_400x400.png'
# cblogo = 'http://res.heraldm.com/content/image/2016/03/31/20160331001007_0.jpg'
# shishlogo = 'https://s-media-cache-ak0.pinimg.com/564x/a2/23/9a/a2239ad4939e4731b354aae7eee70f3b.jpg'
#
# coffee = Category.create(name: 'coffee & tea',logo:'http://www.phoeniciafoods.com/wp-content/gallery/coffee-tea/15471-077.jpg')
# subshop = Category.create(name: 'subshop',logo:'http://waldopizzals.com/wp-content/uploads/2013/10/bigstock-Cold-Cuts-Sandwich-81314072-1.jpg')
# italian = Category.create(name: 'Italian',logo:'http://kassiesa.net/uefa/clubs/images/Italy@4.-old-logo.png')
#
# featured = Course.create(name: 'featured')
# bubble_tea = Course.create(name: 'bubble tea')
# sandwiches = Course.create(name: 'sandwiches')
# gelato = Course.create(name: 'gelato')
#
# kft = Restaurant.create(name: 'kung fun', address: 'Södergatan 5',
# 	city: 'Märsta', zipcode: '195 34', country: 'Sweden',
# 	max_distance: 3, logo: kftlogo)
# RestaurantCategory.create(restaurant: kft, category: italian)
# RestaurantCategory.create(restaurant: kft, category: coffee)
# RestaurantCourse.create(restaurant: kft, course: bubble_tea)
# RestaurantCourse.create(restaurant: kft, course: sandwiches)
# RestaurantCourse.create(restaurant: kft, course: gelato)
# taro = Item.create(name: 'taro', restaurant: kft, price: 5)
# red_bean = Item.create(name: 'red bean', restaurant: kft, price: 4)
#
# cb = Restaurant.create(name: 'caffe bene', address: 'Nymärstagatan 2',
# 	city: 'Märsta', zipcode: '195 30', country: 'Sweden',
# 	max_distance: 3, logo: cblogo)
# RestaurantCategory.create(restaurant: cb, category: coffee)
# RestaurantCourse.create(restaurant: cb, course: featured)
# RestaurantCourse.create(restaurant: cb, course: bubble_tea)
# RestaurantCourse.create(restaurant: cb, course: sandwiches)
# RestaurantCourse.create(restaurant: cb, course: gelato)
# thai = Item.create(name: 'thai', restaurant: cb, price: 4, course: bubble_tea, featured: true)
# green_tea = Item.create(name: 'green tea', restaurant: cb, price: 3, course: bubble_tea)
# teriyaki = Item.create(name: 'teriyaki chicken', restaurant: cb, price: 7, course: sandwiches, featured: true)
# ham_swiss = Item.create(name: 'ham and swiss', restaurant: cb, price: 6, course: sandwiches)
# mango = Item.create(name: 'mango', restaurant: cb, price: 4, course: gelato)
#
#
# shish = Restaurant.create(name: 'shish', address: 'Mjölnergatan 16',
# 	city: 'Märsta', zipcode: '195 53', country: 'Sweden',
# 	max_distance: 1, logo: shishlogo)
# RestaurantCategory.create(restaurant: shish, category: subshop)
# RestaurantCourse.create(restaurant: shish, course: bubble_tea)
# RestaurantCourse.create(restaurant: shish, course: sandwiches)
# RestaurantCourse.create(restaurant: shish, course: gelato)
# coconut = Item.create(name: 'coconut', restaurant: shish, price: 5)
# milk_tea = Item.create(name: 'milk tea', restaurant: shish, price: 3)
#
# lee = User.create(email: 'lee@lee.com', password: 'hi', address: '12 Bartlett St', city: 'New Brunswick', zipcode: '08901')
