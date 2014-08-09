class AddAttachmentImageToComplaints < ActiveRecord::Migration
  def self.up
    change_table :complaints do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :complaints, :image
  end
end
