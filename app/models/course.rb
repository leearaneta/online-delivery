class Course < ApplicationRecord
	has_many :restaurant_courses
  has_many :restaurants, through: :restaurant_courses
	has_many :items

	def item_ids
		self.items.pluck(:id)
	end

end
