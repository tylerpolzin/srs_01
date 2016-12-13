class Stockmovements < ActiveRecord::Migration[5.0]
  def change
    create_table :stockmovements do |t|
      t.integer :item_id
      t.integer :quantity
      t.text :notes
      t.timestamps
    end
  end
end
