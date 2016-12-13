class Stores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.integer :yard
      t.string :abbrv
      t.string :name
      t.string :prototype
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :lat
      t.string :long
      t.string :phone
      t.string :service_rep
      t.integer :user_id
      t.text :notes
      t.date :lastvisit
      t.timestamps
    end
  end
end
