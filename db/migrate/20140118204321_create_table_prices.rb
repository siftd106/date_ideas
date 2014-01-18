class CreateTablePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :price_range, null: false
      t.timestamps
    end
  end
end
