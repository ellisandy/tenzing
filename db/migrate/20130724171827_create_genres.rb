class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
    add_column :books, :genre_id, :integer
  end
end
