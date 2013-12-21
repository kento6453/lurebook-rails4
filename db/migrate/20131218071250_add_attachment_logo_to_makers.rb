class AddAttachmentLogoToMakers < ActiveRecord::Migration
  def self.up
    change_table :makers do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :makers, :logo
  end
end
