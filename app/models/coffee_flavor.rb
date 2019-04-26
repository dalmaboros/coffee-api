class CoffeeFlavor < ApplicationRecord
  belongs_to :coffee
  belongs_to :flavor
end
