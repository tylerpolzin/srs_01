class Warrantyorders < ActiveRecord::Migration[5.0]
  def change
    create_table :warrantyorders do |t|
      t.integer :customer_id
      t.boolean :active
      t.string :status
      t.string :po_number
      t.text :product
      t.text :email_reference
      t.string :initiated_by
      t.string :initiated_for
      t.text :activity
      t.text :notes
      t.string :shipping_carrier
      t.string :tracking_number
      t.decimal :shipping_cost
      t.timestamps
    end
  end
end
