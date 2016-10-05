class AddIndexes < ActiveRecord::Migration
  def change
    add_index :carriages, [:id, :type]
    add_index :railway_stations_routes, [:railway_station_id, :route_id], unique: true, name: "route_rsr"
    add_index :trains, :route_id
  end
end
