class Items < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :vendor_name
      t.string :model_number
      t.string :part_number
      t.string :upc
      t.text :description
      t.string :picture
      t.string :weight
      t.string :location
      t.integer :count_on_hand
      t.boolean :active
      t.timestamps
    end
  end
end
