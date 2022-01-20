class AddAvailabilityToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :availability, :boolean
  end
end
