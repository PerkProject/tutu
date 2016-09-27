class DeleteColumn < ActiveRecord::Migration
  def change
    remove_column :carriages, :train_id
  end
end
