class RenameColumnInMovie < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :title, :movie
  end
end
