class SvCarriage < Carriage
  validates :lower_place, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :sv, -> { where(type: 'Sv') }

end