class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :scheduled
      t.string :ref
      t.string :type
      t.references :product, index: true
      t.references :location, index: true
      t.references :location, index: true
      t.string :status
      t.references :company, index: true
      t.string :company_as
      t.integer :qty
      t.text :description
      t.integer :priority
      t.references :user, index: true

      t.timestamps
    end
  end
end
