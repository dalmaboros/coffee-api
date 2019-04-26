class Coffee < ApplicationRecord
    has_many :shops, :through => :offerings
    has_many :flavors, :through => :coffee_flavors
    has_many :varieties, :through => :coffee_varieties
    has_many :processing_methods, :through => :coffee_processing_methods
    has_many :origins, :through => :coffee_origins
end
