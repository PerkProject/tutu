class Carriage < ActiveRecord::Base
  belongs_to :train

  validates :number, presence: true

  CARRIAGE_TYPES = %W(купейный плацкартный).freeze

end