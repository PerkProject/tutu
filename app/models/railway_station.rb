class RailwayStation < ActiveRecord::Base
  has_many :trains, foreign_key: :current_station_id
  has_many :tickets_start_station, class_name: "Ticket", foreign_key: :start_station_id
  has_many :tickets_end_station, class_name: "Ticket", foreign_key: :end_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true

  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.position').joins(:railway_stations_routes).uniq.order('railway_stations_routes.position') }
  scope :ordered_by_title, -> { order(:title) }

  def update_position(route, position)
    station_route.update(position: position) if station_route(route)
  end

  def update_time(route, arrival_time, departure_time)
    station_route.update(arrival_time:   arrival_time,
                         departure_time: departure_time) if station_route(route)
  end

  def position_in(route, param)
    station_route(route).try(param)
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
