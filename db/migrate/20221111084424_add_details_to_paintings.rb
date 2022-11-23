class AddDetailsToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_column :paintings, :art_form, :string
    add_column :paintings, :plot, :string
    add_column :paintings, :style, :string
    add_column :paintings, :technic, :string
    add_column :paintings, :materials, :string
    add_column :paintings, :size, :string
  end
end
