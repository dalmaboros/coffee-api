class CreateCoffeeVarieties < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_varieties do |t|
      t.string :name
      t.belongs_to :coffee, foreign_key: true
      t.belongs_to :variety, foreign_key: true

      t.timestamps
    end
  end
end
