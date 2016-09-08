class AddIndexToTrains < ActiveRecord::Migration
  def change
    add_index :trains, :current_station_id
  end
end
