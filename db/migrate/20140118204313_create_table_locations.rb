class CreateTableLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city_name, null: :false
      t.timestamps
    end
  end
end
