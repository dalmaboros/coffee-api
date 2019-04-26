class Offering < ApplicationRecord
  belongs_to :coffee
  belongs_to :shop
end
