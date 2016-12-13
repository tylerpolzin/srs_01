class Profiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :position
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone1
      t.string :phone1_type
      t.string :phone2
      t.string :phone2_type
      t.string :email
      t.text :notes
      t.timestamps
    end
  end
end
