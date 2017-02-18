class AddAttachmentUploadToTasks < ActiveRecord::Migration
  def self.up
    change_table :tasks do |t|
      t.attachment :upload
    end
  end

  def self.down
    remove_attachment :tasks, :upload
  end
end
