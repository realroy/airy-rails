class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :created_at
      t.integer :product_quantity
      t.references :invoice
      t.references :product
      t.timestamps
    end
  end
end
