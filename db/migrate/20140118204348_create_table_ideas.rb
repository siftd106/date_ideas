class CreateTableIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.text :description, null: false
      t.integer :duration_id
      t.integer :stop_id
      t.integer :price_id
      t.integer :location_id
    end
  end
end
