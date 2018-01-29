class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.datetime :created_at
      t.datetime :closed_at
      t.string :status
      t.float :vat
      t.string :img_url

      t.timestamps
    end
  end
end
