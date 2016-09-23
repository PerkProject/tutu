class ChangeCarriage < ActiveRecord::Migration
  def change
    change_table :carriages do |t|
      t.rename :carriage_type, :type
      t.integer :side_top_places
      t.integer :side_lower_places
      t.integer :seats
    end
  end
end
