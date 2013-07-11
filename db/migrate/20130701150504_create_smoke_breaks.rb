class CreateSmokeBreaks < ActiveRecord::Migration
  def self.up
    create_table :smoke_breaks do |t|
      t.integer :user_id
      t.datetime :recorded_time
      t.timestamps
    end
  end

  def self.down
    drop_table :smoke_breaks
  end
end
