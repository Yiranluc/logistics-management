class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :floor
      t.string :section
      t.string :rack
      t.integer :number

      t.timestamps
    end
  end
end
