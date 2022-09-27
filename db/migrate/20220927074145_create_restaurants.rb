class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cooking_type
      t.integer :price
      t.string :city
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
