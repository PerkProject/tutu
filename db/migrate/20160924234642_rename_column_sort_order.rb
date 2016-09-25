class RenameColumnSortOrder < ActiveRecord::Migration
  def change
    rename_column :trains, :sort_order, :head_sort_order
  end
end
