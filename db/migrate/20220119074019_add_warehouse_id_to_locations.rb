class AddWarehouseIdToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :warehouse_id, :integer
  end
end
