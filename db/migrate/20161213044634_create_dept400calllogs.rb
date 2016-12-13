class CreateDept400calllogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dept400calllogs do |t|
      t.integer :user_id
      t.integer :store_id
      t.string :dept_manager_400
      t.boolean :ce_stairdisplays
      t.boolean :ce_binboxes
      t.boolean :ce_tvdisplay
      t.boolean :ce_closetdoors
      t.integer :ce_barndoors
      t.boolean :ce_lit_tearpads
      t.boolean :ce_lit_closetdoors
      t.boolean :ce_lit_columns
      t.text :ce_notes
      t.boolean :genie_sku_4251691
      t.boolean :genie_sku_4251689
      t.boolean :genie_sku_4252547
      t.boolean :genie_sku_4252548
      t.boolean :genie_sku_4254040
      t.boolean :genie_sku_4251720
      t.boolean :genie_sku_4252388
      t.boolean :genie_sku_4252445
      t.boolean :genie_sku_4252391
      t.boolean :genie_sku_4251685
      t.text :genie_notes
      t.timestamps
    end
  end
end
