class RailwayStation < ActiveRecord::Base
  has_many :trains, foreign_key: :current_station_id
  has_many :tickets_start_station, class_name: "Ticket", foreign_key: :start_station_id
  has_many :tickets_end_station, class_name: "Ticket", foreign_key: :end_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true

  scope :ordered, -> { includes(:railway_stations_routes).order("railway_stations_routes.position") }
end
