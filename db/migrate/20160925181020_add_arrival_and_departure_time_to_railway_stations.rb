class AddArrivalAndDepartureTimeToRailwayStations < ActiveRecord::Migration
  def change
    add_column :railway_stations_routes, :arrival_time, :string
    add_column :railway_stations_routes, :departure_time, :string
  end
end
