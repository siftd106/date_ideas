class RenameColumnInDestinationsTable < ActiveRecord::Migration
  def change
    rename_column :destinations, :stop_range, :destinations
  end
end
