class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.integer :x
      t.integer :y
      t.integer :z
      t.string :barcode
      t.string :ref

      t.timestamps
    end
  end
end
