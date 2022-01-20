class AddForeignKeyToLocations < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :locations, :warehouses
  end
end
