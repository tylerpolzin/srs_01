class CreateDept600calllogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dept600calllogs do |t|
      t.integer :user_id
      t.integer :store_id
      t.string :dept_manager_600
      t.boolean :hw_sku_3351566
      t.boolean :hw_sku_3351579
      t.boolean :hw_sku_6360310
      t.boolean :hw_sku_6360320
      t.boolean :hw_sku_6360325
      t.boolean :hw_sku_6360328
      t.boolean :hw_sku_3351813
      t.boolean :hw_sku_3351830
      t.boolean :hw_sku_3351832
      t.boolean :hw_sku_3351833
      t.boolean :hw_sku_6360205
      t.boolean :hw_sku_6360210
      t.boolean :hw_sku_6360220
      t.boolean :hw_sku_6360150
      t.boolean :hw_sku_6360200
      t.boolean :hw_sku_3351837
      t.boolean :hw_sku_3351779
      t.boolean :hw_sku_3351885
      t.boolean :hw_sku_3351785
      t.boolean :hw_sku_3351798
      t.boolean :hw_sku_3351879
      t.boolean :hw_sku_3351895
      t.boolean :hw_sku_3352001
      t.boolean :hw_sku_3352014
      t.boolean :hw_sku_3352027
      t.boolean :hw_sku_3352030
      t.boolean :hw_sku_6399948
      t.boolean :hw_sku_6399949
      t.boolean :hw_sku_6399978
      t.boolean :hw_sku_6399979
      t.boolean :hw_lit_thermostat
      t.boolean :hw_lit_airquality
      t.text :honeywell_notes
      t.timestamps
    end
  end
end
