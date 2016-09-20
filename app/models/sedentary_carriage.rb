class SedentaryCarriage < Carriage
  validates :seats, numericality: { only_integer: true, greater_than: 0 }

  scope :sedentary, -> { where(type: 'Sedentary') }

  def self.model_name
    Carriage.model_name
  end

end