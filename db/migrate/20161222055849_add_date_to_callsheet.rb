class AddDateToCallsheet < ActiveRecord::Migration[5.0]
  def self.up
    change_column :callsheets, :visit_date, :date

  end

  def self.down
    change_column :callsheets, :visit_date, :string
  end
end