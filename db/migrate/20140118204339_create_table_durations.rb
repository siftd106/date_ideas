class CreateTableDurations < ActiveRecord::Migration
  def change
    create_table :durations do |t|
      t.string :duration, null: false
      t.timestamps
    end
  end
end
