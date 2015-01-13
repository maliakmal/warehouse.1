class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :barcode
      t.string :ref
      t.integer :active
      t.text :description

      t.timestamps
    end
  end
end
