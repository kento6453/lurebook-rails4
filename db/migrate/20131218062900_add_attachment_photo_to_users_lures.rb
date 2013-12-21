class AddAttachmentPhotoToUsersLures < ActiveRecord::Migration
  def self.up
    change_table :users_lures do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :users_lures, :photo
  end
end
