class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :nameOfPainting
      t.date :yearOfPainting

      t.timestamps
    end
  end
end
