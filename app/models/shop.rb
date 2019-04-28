class Shop < ApplicationRecord
  has_many :offerings
  has_many :coffees, :through => :offerings
end
