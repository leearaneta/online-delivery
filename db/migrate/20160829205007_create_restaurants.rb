class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zipcode
      t.integer :max_distance

      t.timestamps
    end
  end
end
