class AddComicToComics < ActiveRecord::Migration[6.0]
  def change
    add_column :comics, :comic, :string
  end
end
