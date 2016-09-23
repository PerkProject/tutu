class AddSortOrderToTrain < ActiveRecord::Migration
  def change
    add_column :trains, :sort_order, :boolean, default: true
  end
end
