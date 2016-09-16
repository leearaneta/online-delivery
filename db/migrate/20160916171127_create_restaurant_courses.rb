class CreateRestaurantCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_courses do |t|
      t.integer :restaurant_id
      t.integer :course_id

      t.timestamps
    end
  end
end
