class AddStoresToCallsheets < ActiveRecord::Migration[5.0]
  def self.up
    add_column :callsheets, :store_number, :integer
    add_column :callsheets, :store_abbrv, :string
    add_column :callsheets, :store_name, :string
    add_column :new_callsheets, :store_abbrv, :string
    add_column :new_callsheets, :store_name, :string
  end
end
