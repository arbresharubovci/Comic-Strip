class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.integer :owner_id
      t.string :photo
      t.string :caption
      t.string :likes_count
      t.string :comments_count
      t.integer :shares_count

      t.timestamps
    end
  end
end
