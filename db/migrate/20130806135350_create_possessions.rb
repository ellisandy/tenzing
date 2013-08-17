class CreatePossessions < ActiveRecord::Migration
  def change
    create_table :possessions do |t|
      t.integer :category_id
      t.string :title
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
