class SedentaryCarriage < Carriage
  validates :seats, numericality: { only_integer: true, greater_than: 0 }

  scope :sedentary, -> { where(type: 'Sedentary') }
end