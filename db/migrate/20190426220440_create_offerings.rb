class CreateOfferings < ActiveRecord::Migration[5.2]
  def change
    create_table :offerings do |t|
      t.string :name
      t.belongs_to :coffee, foreign_key: true
      t.belongs_to :shop, foreign_key: true

      t.timestamps
    end
  end
end
