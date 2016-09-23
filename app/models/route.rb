class Route < ActiveRecord::Base
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
  has_many :trains

  validates :name, presence: true

  before_create :order_stations

  private

  def order_stations
    railway_stations_routes.each_with_index {|item, position| item.position = position }
  end
end
