class AddColumnsToOrigins < ActiveRecord::Migration[5.2]
  def change
    add_column :origins, :province, :string
    add_column :origins, :commune, :string
  end
end
