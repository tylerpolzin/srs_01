class AddRemoveAttachedFilesToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :remove_avatar, :boolean, :default => false
  end
end
