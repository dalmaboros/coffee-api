# Templates
Shop.create(name: "", hours: "", address: "", coordinates: "")
Coffee.create(name: "", description: "", roaster: "", producer: "", washing_station: "", min_altitude: , max_altitude: , season_start: "", season_end: "")
Flavor.create(name: "", decription: "", tier: )
Variety.create(name: "", description: "")
ProcessingMethod.create(name: "", description: "")
Origin.create(continent: "", country: "", state: "", region: "")

# Association Templates (did I mess this up by giving them all name attributes? lol)
Offering.create(name: "")
CoffeeFlavor.create(name: "")
CoffeeVariety.create(name: "")
CoffeeProcessingMethod.create(name: "")
CoffeeOrigin.create(name: "")

# Load the data with `rails db:seed`
