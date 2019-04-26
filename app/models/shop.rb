class Shop < ApplicationRecord
  has_many :coffees, :through => :offerings
end
