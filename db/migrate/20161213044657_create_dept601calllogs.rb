class CreateDept601calllogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dept601calllogs do |t|
      t.integer :user_id
      t.integer :store_id
      t.boolean :summit_sku_6471315
      t.boolean :summit_sku_6471317
      t.boolean :summit_sku_6471323
      t.boolean :summit_sku_6471320
      t.boolean :summit_sku_6471321
      t.boolean :summit_sku_6471330
      t.boolean :summit_sku_6471333
      t.boolean :summit_sku_6471305
      t.boolean :summit_sku_6471322
      t.boolean :summit_sku_6471302
      t.boolean :summit_sku_6473100
      t.boolean :summit_sku_6471335
      t.boolean :summit_sku_6471325
      t.boolean :summit_sku_6473918
      t.boolean :summit_sku_6473917
      t.boolean :summit_sku_6473900
      t.boolean :summit_sku_6473136
      t.text :summit_notes
      t.boolean :allstone_lit
      t.text :allstone_notes
      t.text :tuscany_notes
      t.timestamps
    end
  end
end
