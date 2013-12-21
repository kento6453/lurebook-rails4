class AddAttachmentPhotoToLures < ActiveRecord::Migration
  def self.up
    change_table :lures do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :lures, :photo
  end
end
