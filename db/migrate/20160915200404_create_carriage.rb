class CreateCarriage < ActiveRecord::Migration
  def change
    create_table :carriages do |t|
      t.integer :number
      t.integer :top_place
      t.integer :lower_place
      t.string  :type

      t.timestamps
    end
  end
end
