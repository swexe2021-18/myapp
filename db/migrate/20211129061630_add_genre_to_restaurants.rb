class AddGenreToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :genre, :string
  end
end
