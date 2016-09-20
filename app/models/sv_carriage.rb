class SvCarriage < Carriage
  validates :lower_place, numericality: { only_integer: true, greater_than: 0 }

  scope :sv, -> { where(type: 'Sv') }

  def self.model_name
    Carriage.model_name
  end

end