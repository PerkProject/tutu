class SedentaryCarriage < Carriage
  validates :seats, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :sedentary, -> { where(type: 'Sedentary') }

end