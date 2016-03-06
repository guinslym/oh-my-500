class AddImageToWebsite < ActiveRecord::Migration
  def change
  	add_attachment :websites, :image
  	add_column :websites, :image_string, :text
  	add_column :websites, :title, :text
  end
end
