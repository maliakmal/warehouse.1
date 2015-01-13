class CreateReorderRules < ActiveRecord::Migration
  def change
    create_table :reorder_rules do |t|
      t.references :product, index: true
      t.integer :minimum_stock
      t.integer :maximum_stock
      t.references :company, index: true

      t.timestamps
    end
  end
end
