class Restaurant < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  has_many :restaurant_categories
  has_many :categories, through: :restaurant_categories
  has_many :items
  has_many :restaurant_courses
  has_many :courses, through: :restaurant_courses

  def full_address
  	"#{address}, #{zipcode} #{city}, #{country}"
  end


end
