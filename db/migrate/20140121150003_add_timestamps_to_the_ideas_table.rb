class AddTimestampsToTheIdeasTable < ActiveRecord::Migration
  def change
    change_table(:ideas) do |t|
      t.timestamps
    end
  end
end
