class CoffeeProcessingMethod < ApplicationRecord
  belongs_to :coffee
  belongs_to :processing_method
end
