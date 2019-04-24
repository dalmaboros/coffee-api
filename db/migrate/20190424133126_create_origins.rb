class CreateOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :continent
      t.string :country
      t.string :state
      t.string :region

      t.timestamps
    end
  end
end
