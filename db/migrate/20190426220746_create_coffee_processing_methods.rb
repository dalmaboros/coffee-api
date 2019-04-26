class CreateCoffeeProcessingMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_processing_methods do |t|
      t.string :name
      t.belongs_to :coffee, foreign_key: true
      t.belongs_to :processing_method, foreign_key: true

      t.timestamps
    end
  end
end
