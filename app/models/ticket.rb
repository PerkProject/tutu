class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :start_station, class_name: "RailwayStation", foreign_key: :start_station_id
  belongs_to :end_station, class_name: "RailwayStation", foreign_key: :end_station_id
  belongs_to :train

  validates :number, :passenger_name, :passport_number, presence: true
  before_validation :set_number, on: :create

  after_create :send_buy_notification
  after_destroy :send_cancel_notification

  private

  def set_number
    self.number = ["a".."z", "A".."Z", "0".."9"].map(&:to_a).flatten.sample(8).join
  end

  def send_buy_notification
    TicketsMailer.buy_ticket(self).deliver_now
  end

  def send_cancel_notification
    TicketsMailer.cancel_ticket(self).deliver_now
  end
end
