class ProcessingMethod < ApplicationRecord
  has_many :coffees, :through => :coffee_processing_methods
end
