class AddZoneToOrigins < ActiveRecord::Migration[5.2]
  def change
    add_column :origins, :zone, :string
  end
end
