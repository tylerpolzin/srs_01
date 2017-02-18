class Warrantyorders < ActiveRecord::Migration[5.0]
  def change
    create_table :warrantyorders do |t|
      t.integer :customer_id
      t.integer :task_id
      t.string :po_number
      t.text :activity
      t.string :shipping_carrier
      t.string :tracking_number
      t.decimal :shipping_cost
      t.timestamps
    end
  end
end
