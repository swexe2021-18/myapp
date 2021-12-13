class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :shop
      t.string :area
      t.time :time
      t.string :day
      t.string :other
      t.integer :user_id

      t.timestamps
    end
  end
end
