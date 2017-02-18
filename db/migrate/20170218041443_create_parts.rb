class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.integer :item_id
      t.boolean :store_orderable
      t.string :upc
      t.text :description
      t.string :weight
      t.string :location
      t.integer :count_on_hand
      t.boolean :active, default: true
      t.text :notes
      t.decimal :part_cost, default: "0.00", null: false
      t.decimal :shipping_cost, default: "0.00", null: false
      t.timestamps
    end
  end
end
