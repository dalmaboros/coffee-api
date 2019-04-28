class Coffee < ApplicationRecord
    has_many :offerings
    has_many :shops, :through => :offerings

    has_many :coffee_flavors
    has_many :flavors, :through => :coffee_flavors

    has_many :coffee_varieties
    has_many :varieties, :through => :coffee_varieties

    has_many :coffee_processing_methods
    has_many :processing_methods, :through => :coffee_processing_methods
    
    has_many :coffee_origins
    has_many :origins, :through => :coffee_origins
end
