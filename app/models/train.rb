class Train < ActiveRecord::Base
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  belongs_to :route
  has_many :carriages

  def show_count_place_by_type(carriage_type, place_type)
    self.carriages.where(carriage_type: carriage_type).sum(place_type)
  end

end
