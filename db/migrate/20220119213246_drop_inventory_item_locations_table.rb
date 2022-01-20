class DropInventoryItemLocationsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :inventory_item_locations
  end
end
