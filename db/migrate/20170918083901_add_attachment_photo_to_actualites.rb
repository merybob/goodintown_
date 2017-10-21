class AddAttachmentPhotoToActualites < ActiveRecord::Migration
  def self.up
    change_table :actualites do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :actualites, :photo
  end
end
