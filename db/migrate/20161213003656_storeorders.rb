class Storeorders < ActiveRecord::Migration[5.0]
  def change
    create_table :storeorders do |t|
      t.integer :store_id
      t.integer :item_id
      t.boolean :active
      t.string :status
      t.string :po_number
      t.text :email_reference
      t.text :notes
      t.string :initiated_by
      t.string :initiated_for
      t.text :activity
      t.string :shipping_carrier
      t.string :tracking_number
      t.decimal :shipping_cost
      t.timestamps
    end
  end
end
