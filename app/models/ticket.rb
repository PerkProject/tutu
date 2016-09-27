class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :start_station, class_name: "RailwayStation", foreign_key: :start_station_id
  belongs_to :end_station, class_name: "RailwayStation", foreign_key: :end_station_id
  belongs_to :train

  validates :number, :passenger_name, :passport_number, presence: true
  before_validation :set_number, on: :create

  private

  def set_number
    syms = ['a'..'z','A'..'Z','0'..'9'].map{ |range| range.to_a }.flatten
    self.number = (0...8).map{ syms[ rand(syms.size) ] }.join
  end
end
