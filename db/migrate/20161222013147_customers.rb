class Customers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :company
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email
      t.integer :warrantyorder_id
      t.float :lat
      t.float :long
      t.timestamps
    end
  end
end
