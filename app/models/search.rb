class Search
  include ActiveModel::Model
  attr_accessor :start_station_id, :end_station_id
  attr_reader :result
  validates :start_station_id, :end_station_id, presence: true

  def start_station
    @start_station ||= RailwayStation.find(start_station_id)
  end

  def end_station
    @end_station ||= RailwayStation.find(end_station_id)
  end

  def search_run
    @result = Train.joins(route: :railway_stations).where(railway_stations: {id: start_station_id}) &
              Train.joins(route: :railway_stations).where(railway_stations: {id: end_station_id})
  end
end
