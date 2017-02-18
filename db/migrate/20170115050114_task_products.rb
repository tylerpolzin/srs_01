class TaskProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :task_products do |t|
      t.integer :task_id
      t.integer :product_id
      t.timestamps
    end
  end
end