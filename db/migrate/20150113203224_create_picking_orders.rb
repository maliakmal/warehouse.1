class CreatePickingOrders < ActiveRecord::Migration
  def change
    create_table :picking_orders do |t|
      t.string :status
      t.references :order, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
