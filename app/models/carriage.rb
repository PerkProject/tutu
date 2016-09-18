class Carriage < ActiveRecord::Base
  CARRIAGE_TYPES = { CoupeCarriage: 'Купе',
                     EconomyCarriage: 'Платцкарт',
                     SvCarriage: 'СВ',
                     SedentaryCarriage: 'Сидячий' }.freeze

  belongs_to :train

  validates :number, presence: true
  validates :number, uniqueness: { scope: :train_id }
  validates :train_id, presence: true

  before_validation :set_number, on: :create

  private

  def set_number
    current_number = train.carriages.maximum(:number) |= 0
    self.number = current_number + 1
  end
end
