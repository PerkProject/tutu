class Carriage < ActiveRecord::Base
  CARRIAGE_TYPES = %W(купейный плацкартный).freeze

  belongs_to :train

  validates :number, presence: true
end
