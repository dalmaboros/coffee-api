class CreateCoffeeFlavors < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_flavors do |t|
      t.string :name
      t.belongs_to :coffee, foreign_key: true
      t.belongs_to :flavor, foreign_key: true

      t.timestamps
    end
  end
end
