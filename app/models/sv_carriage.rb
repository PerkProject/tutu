class SvCarriage < Carriage
  validates :lower_place, numericality: { only_integer: true, greater_than: 0 }
end