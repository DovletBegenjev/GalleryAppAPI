class AddPainterIdToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_column :paintings, :painter_id, :integer
    add_index :paintings, :painter_id
  end
end
