class ProcessingMethod < ApplicationRecord
  has_many :coffee_processing_methods
  has_many :coffees, :through => :coffee_processing_methods
end
