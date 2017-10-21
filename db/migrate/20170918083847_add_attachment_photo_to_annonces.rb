class AddAttachmentPhotoToAnnonces < ActiveRecord::Migration
  def self.up
    change_table :annonces do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :annonces, :photo
  end
end
