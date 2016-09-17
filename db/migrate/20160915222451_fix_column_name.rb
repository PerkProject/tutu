class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :carriages, :type, :carriage_type
  end
end
