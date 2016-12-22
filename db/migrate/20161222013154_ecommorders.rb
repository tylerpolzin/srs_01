class Ecommorders < ActiveRecord::Migration[5.0]
  def change
    create_table :ecommorders do |t|
      t.string :ecomm_hub
      t.string :order_status
      t.string :merchant
      t.string :retailer
      t.datetime :order_date
      t.integer :order_line_count
      t.string :item_sku
      t.integer :item_quantity
      t.decimal :item_cost
      t.string :shipto_name
      t.string :shipto_address1
      t.string :shipto_address2
      t.string :shipto_zipcode
      t.string :shipto_city
      t.string :shipto_state
      t.string :shipto_phone
      t.string :shipping_service
      t.string :po_number
      t.integer :order_weight
      t.integer :order_length
      t.integer :order_width
      t.integer :order_height
      t.timestamps
    end
  end
end
