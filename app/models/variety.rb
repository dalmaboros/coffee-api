class Variety < ApplicationRecord
  has_many :coffees, :through => :coffee_varieties
end
