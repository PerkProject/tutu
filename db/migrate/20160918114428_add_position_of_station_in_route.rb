class AddPositionOfStationInRoute < ActiveRecord::Migration
  def change
    add_column :railway_stations_routes, :position, :integer, default: 0
    add_belongs_to :railway_stations_routes, :railway_station_id, index: true
    add_belongs_to :railway_stations_routes, :route_id, index: true
  end
end
