class AddLocationIdToInventoryItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventory_items, :locations, index: true, foreign_key: true
  end
end
