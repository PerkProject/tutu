class ChangeCarriageNumber < ActiveRecord::Migration
  def change
    change_column_null :carriages, :number, :null => false
  end
end
