class Origin < ApplicationRecord
  has_many :coffees, :through => :coffee_origins
end
