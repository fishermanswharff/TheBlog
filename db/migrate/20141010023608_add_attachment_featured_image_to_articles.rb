class AddAttachmentFeaturedImageToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :articles, :featured_image
  end
end
