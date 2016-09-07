class RailwayStation < ActiveRecord::Base
  has_many :trains, class_name: 'Train', foreign_key: :current_station_id
  has_many :tickets, class_name: 'Ticket', foreign_key: :start_station_id
  has_many :tickets, class_name: 'Ticket', foreign_key: :end_station_id
end
