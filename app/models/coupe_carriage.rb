class CoupeCarriage < Carriage
validates :top_place,
          :lower_place,
          numericality: { only_integer: true, greater_than: 0 }

end
