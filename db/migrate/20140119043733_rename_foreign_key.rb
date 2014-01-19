class RenameForeignKey < ActiveRecord::Migration
  def change
    rename_column :ideas, :stop_id, :destination_id
  end
end
