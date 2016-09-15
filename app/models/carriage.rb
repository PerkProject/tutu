class Carriage < ActiveRecord::Base
  belongs_to :train

  validates :number, presence: true
end