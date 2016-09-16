class Course < ApplicationRecord
	has_many :restaurant_courses
  	has_many :restaurants, through: :restaurant_courses
  	has_many :items
end
