class CreateCoffeeOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_origins do |t|
      t.string :name
      t.belongs_to :coffee, foreign_key: true
      t.belongs_to :origin, foreign_key: true

      t.timestamps
    end
  end
end
