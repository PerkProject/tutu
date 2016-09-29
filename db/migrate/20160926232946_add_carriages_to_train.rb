class AddCarriagesToTrain < ActiveRecord::Migration
  def change
    remove_column :carriages, :train_id
    add_belongs_to :carriages, :train
  end
end
