class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :picking_order, index: true
      t.references :product, index: true
      t.references :location, index: true
      t.references :location, index: true
      t.integer :qty

      t.timestamps
    end
  end
end
