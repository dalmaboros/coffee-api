class AddVillageToOrigins < ActiveRecord::Migration[5.2]
  def change
    add_column :origins, :village, :string
  end
end
