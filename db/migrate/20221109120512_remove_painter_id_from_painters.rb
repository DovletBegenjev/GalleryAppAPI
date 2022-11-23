class RemovePainterIdFromPainters < ActiveRecord::Migration[7.0]
  def change
    remove_column :painters, :painter_id, :integer
  end
end
