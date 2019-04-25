class Coffee < ApplicationRecord
    has_and_belongs_to_many :shops
    # Let's deal with single origin coffees for now
    # has_and_belongs_to_many :blends
    has_and_belongs_to_many :flavors
    has_and_belongs_to_many :varieties
    has_and_belongs_to_many :processings
    # Let's set this up for blend (multi-origin) coffees in the future
    has_and_belongs_to_many :origins
end
