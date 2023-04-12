class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.integer :comic_id
      t.integer :ower_id

      t.timestamps
    end
  end
end
