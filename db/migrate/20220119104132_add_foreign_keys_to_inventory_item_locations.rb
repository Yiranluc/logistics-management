class AddForeignKeysToInventoryItemLocations < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventory_item_locations, :inventory_items, index: true, foreign_key: true
    add_reference :inventory_item_locations, :locations, index: true, foreign_key: true

  end
end
