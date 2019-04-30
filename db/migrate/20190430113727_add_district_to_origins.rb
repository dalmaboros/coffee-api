class AddDistrictToOrigins < ActiveRecord::Migration[5.2]
  def change
    add_column :origins, :district, :string
  end
end
