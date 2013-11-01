class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :item
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
