class AddGalleryIdToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_column :paintings, :gallery_id, :integer
    add_index :paintings, :gallery_id
  end
end
