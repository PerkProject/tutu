class Carriage < ActiveRecord::Base
  CARRIAGE_TYPES = {CoupeCarriage:     "Купе",
                    EconomyCarriage:   "Платцкарт",
                    SvCarriage:        "СВ",
                    SedentaryCarriage: "Сидячий"}.freeze

  belongs_to :train

  validates :number, presence: true
  validates :number, uniqueness: {scope: :train_id}
  #validates :train_id, presence: true

  before_validation :set_number, on: :create

  scope :sorted, -> { order(:number) }
  scope :ordered_by_train, -> { joins(:train).order('trains.number, carriage.number')}

  def self.types
    CARRIAGE_TYPES.keys
  end

  protected

  def set_number
    current_number = Carriage.where(train_id: train_id).maximum(:number) || 0
    self.number = current_number + 1
  end
end
