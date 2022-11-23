class CreatePainters < ActiveRecord::Migration[7.0]
  def change
    create_table :painters do |t|
      t.string :name
      t.string :surname
      t.date :birthDate
      t.string :placeOfBirth
      t.string :genre
      t.string :style
      t.string :picFileName
      t.integer :picture

      t.timestamps
    end
  end
end
