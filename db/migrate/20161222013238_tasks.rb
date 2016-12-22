class Tasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :initiated_by
      t.string :initiated_for
      t.string :task_type
      t.text :email_reference
      t.string :status
      t.boolean :autocompleteable
      t.timestamp :deadline
      t.timestamp :reminding_at
      t.timestamp :finished_at
      t.timestamps
    end
  end
end
