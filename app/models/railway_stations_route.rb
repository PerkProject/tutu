class RailwayStationsRoute < ActiveRecord::Base
  belongs_to :railway_station
  belongs_to :route
end
