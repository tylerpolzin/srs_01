class NewCallsheets < ActiveRecord::Migration[5.0]
  def change
    create_table :new_callsheets do |t|
      t.integer :store_id
      t.integer :store_number
      t.string :store_abbrv
      t.string :store_name
      t.date :callsheet_date
      t.timestamps
    end
  end
end
