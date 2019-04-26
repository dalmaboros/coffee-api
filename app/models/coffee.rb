class Coffee < ApplicationRecord
    has_and_belongs_to_many :shops
    has_and_belongs_to_many :flavors
    has_and_belongs_to_many :varieties
    has_and_belongs_to_many :processings
    has_and_belongs_to_many :origins
end
