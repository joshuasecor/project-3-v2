class AddAttachmentPhotoToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :services, :photo
  end
end
