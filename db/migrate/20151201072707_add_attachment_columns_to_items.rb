class AddAttachmentColumnsToItems < ActiveRecord::Migration
  def change
    add_attachment :items, :photo
  end
end
