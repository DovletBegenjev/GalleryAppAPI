class AddPainterIdToPainters < ActiveRecord::Migration[7.0]
  def change
    add_column :painters, :painter_id, :integer
    add_index :painters, :painter_id
  end
end
