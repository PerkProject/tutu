class CoupeCarriage < Carriage
  validates :top_place,
            :lower_place,
            numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
