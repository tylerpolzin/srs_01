class AddColumnsToItems < ActiveRecord::Migration[5.0]
  def self.up
    add_column :items, :item_cost, :decimal, default: "0.00", null: false
    add_column :items, :shipping_cost, :decimal, default: "0.00", null: false
    add_column :items, :notes, :text
  end
end
