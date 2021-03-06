class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :order_id
      t.integer :restaurant_id
      t.integer :course_id
      t.boolean :featured, default: false

      t.timestamps
    end
  end
end
