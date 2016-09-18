class RenameColumnAndIndex < ActiveRecord::Migration
  def change
    rename_column :railway_stations_routes, :railway_station_id_id, :railway_station_id
    rename_column :railway_stations_routes, :route_id_id, :route_id
    rename_index :railway_stations_routes, :railway_station_id_id, :railway_station_id
    rename_index :railway_stations_routes, :route_id_id, :route_id
  end
end
