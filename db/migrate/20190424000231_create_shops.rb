class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :hours
      t.string :address
      t.string :coordinates

      t.timestamps
    end
  end
end
