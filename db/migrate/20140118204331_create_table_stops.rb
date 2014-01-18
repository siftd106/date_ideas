class CreateTableStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :stop_range, null: false
      t.timestamps
    end
  end
end
