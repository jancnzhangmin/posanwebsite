class AddAttachmentNewspaperimageToNewspapers < ActiveRecord::Migration
  def self.up
    change_table :newspapers do |t|
      t.attachment :newspaperimage
    end
  end

  def self.down
    remove_attachment :newspapers, :newspaperimage
  end
end
