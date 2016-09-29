class AddTrainRefToCarriages < ActiveRecord::Migration
  def change
    add_reference :carriages, :train, index: true, foreign_key: true
  end
end
