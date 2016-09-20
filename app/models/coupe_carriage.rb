class CoupeCarriage < Carriage
validates :top_place,
          :lower_place,
          numericality: { only_integer: true, greater_than: 0 }

scope :coupe, -> { where(type: 'Coupe') }

  def self.model_name
    Carriage.model_name
  end

end
