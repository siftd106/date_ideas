class RenameStopsTable < ActiveRecord::Migration
  def change
    rename_table :stops, :destinations
  end
end
