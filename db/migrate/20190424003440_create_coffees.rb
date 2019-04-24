class CreateCoffees < ActiveRecord::Migration[5.2]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :description
      t.string :roaster
      t.string :producer
      t.string :washing_station
      t.integer :min_altitude
      t.integer :max_altitude
      t.string :season_start
      t.string :season_end

      t.timestamps
    end
  end
end
