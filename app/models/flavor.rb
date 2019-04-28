class Flavor < ApplicationRecord
  has_many :coffee_flavors
  has_many :coffees, :through => :coffee_flavors
end
