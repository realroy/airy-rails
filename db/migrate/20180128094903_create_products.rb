class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :in_stock
      t.string :img_url
      t.string :brand

      t.timestamps
    end
  end
end
