class AddFieldsToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :cuisine, :string
    add_column :restaurants, :chef_name, :string
  end
end
