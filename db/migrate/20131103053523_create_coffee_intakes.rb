class CreateCoffeeIntakes < ActiveRecord::Migration
  def change
    create_table :coffee_intakes do |t|
      t.integer :user_id
      t.datetime :recorded_time

      t.timestamps
    end
  end
end
