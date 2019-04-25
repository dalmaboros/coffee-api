class Shop < ApplicationRecord
  has_and_belongs_to_many :coffees
  # Let's deal with single origin coffees for now
  # has_and_belongs_to_many :blends
end
