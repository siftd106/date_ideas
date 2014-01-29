class AddIndexToCreatedAtColumnOnTheIdeasTable < ActiveRecord::Migration
  def change
    add_index :ideas, :created_at
  end
end
