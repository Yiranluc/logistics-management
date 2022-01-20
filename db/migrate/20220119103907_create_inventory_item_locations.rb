class CreateInventoryItemLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_item_locations do |t|

      t.timestamps
    end
  end
end
