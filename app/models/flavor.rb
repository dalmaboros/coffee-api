class Flavor < ApplicationRecord
  has_many :coffees, :through => :coffee_flavors
end
