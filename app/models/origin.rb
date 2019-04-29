class Origin < ApplicationRecord
  has_many :coffee_origins
  has_many :coffees, :through => :coffee_origins
end
