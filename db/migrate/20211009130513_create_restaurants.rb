class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating, default: 0, null: false
      t.string :address

      t.timestamps # created_at and updated_at
    end
  end
end
