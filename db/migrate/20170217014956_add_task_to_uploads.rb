class AddTaskToUploads < ActiveRecord::Migration[5.0]
  def self.up
    add_column :uploads, :task_id, :integer
  end
end
