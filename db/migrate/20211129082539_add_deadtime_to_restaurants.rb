class AddDeadtimeToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :deadtime, :time
  end
end
