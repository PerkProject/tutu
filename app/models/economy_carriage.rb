class EconomyCarriage < Carriage
  validates :top_place,
            :lower_place,
            :side_top_places,
            :side_lower_places,
            numericality: {only_integer: true, greater_than_or_equal_to: 0}

  scope :economy, -> { where(type: "Economy") }
end
