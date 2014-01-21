class AddTimestampsToTheIdeasTable < ActiveRecord::Migration
  def change_table(:ideas) do |t|
    t.timestamps
  end
end
