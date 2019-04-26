class CreateProcessingMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :processing_methods do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
