class RestaurantCourse < ApplicationRecord
	belongs_to :restaurant
  belongs_to :course
end
