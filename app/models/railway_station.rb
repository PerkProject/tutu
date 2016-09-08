class RailwayStation < ActiveRecord::Base
  validates :title, presence: true
  has_many :trains, foreign_key: :current_station_id
  has_many :tickets_start_station, class_name: 'Ticket', foreign_key: :start_station_id
  has_many :tickets_end_station, class_name: 'Ticket', foreign_key: :end_station_id
end
