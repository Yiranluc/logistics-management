class AddDetailsToInventoryItems < ActiveRecord::Migration[7.0]
  def change
    add_column :inventory_items, :name, :string
    add_column :inventory_items, :upc_code, :string
    add_column :inventory_items, :quantity, :integer
    add_column :inventory_items, :date_of_arrival, :datetime
    add_column :inventory_items, :category, :string
    add_column :inventory_items, :status, :string
    add_column :inventory_items, :description, :text
  end
end
