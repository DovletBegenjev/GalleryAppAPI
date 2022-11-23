class CreateGalleries < ActiveRecord::Migration[7.0]
  def change
    create_table :galleries do |t|
      t.text :name
      t.string :location
      t.string :link

      t.timestamps
    end
  end
end