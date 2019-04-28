# Templates
# Shop.create(name: "", hours: "", address: "", coordinates: "")
# Coffee.create(name: "", description: "", roaster: "", producer: "", washing_station: "", min_altitude: , max_altitude: , season_start: "", season_end: "")
# Flavor.create(name: "", decription: "", tier: )
# Variety.create(name: "", description: "")
# ProcessingMethod.create(name: "", description: "")
# Origin.create(continent: "", country: "", state: "", region: "")

# Association Templates (did I mess this up by giving them all name attributes? lol)
# Offering.create(name: "")
# CoffeeFlavor.create(name: "")
# CoffeeVariety.create(name: "")
# CoffeeProcessingMethod.create(name: "")
# CoffeeOrigin.create(name: "")

# Application Seeds
Shop.create(name: "Cherry Espresso Bar", hours: "6:30-17:00 Mo-Fr, 7:00-17:00 Sa-Su", address: "4877 Laurel St, New Orleans, LA 70115", coordinates: "29.9183317, 90.1101652")
Shop.create(name: "Cherry Coffee Roasters", hours: "7-17:00 Mo-Su", address: "1581 Magazine St, New Orleans, LA 70130", coordinates: "29.9328293, 90.0752705")

Origin.create(continent: "Africa", country: "Ethiopia", state: "Southern Nations, Nationalities, and Peoples' Region", zone: "Sidama", region: "Bensa")
ProcessingMethod.create(name: "fully washed", description: "")
ProcessingMethod.create(name: "screen size 13 separation", description: "")
Variety.create(name: "74/158", description: "")
Variety.create(name: "74/110", description: "")
Variety.create(name: "Setami", description: "")
Flavor.create(name: "date", decription: "", tier: 3)
Flavor.create(name: "peach", decription: "The floral, perfuming, fruity, sweet, slightly sour aromatic associated with peaches", tier: 3)
Flavor.create(name: "black tea", decription: "A somewhat brown, musty, dried plant and dried bark aromatic associated with the oxidization of tea leaves.", tier: 2)
# Coffee.create(name: "Keramo", description: "", roaster: "Roseline", producer: "Multiple small farms surrounding the Keramo mill", washing_station: "Bombe Washing Station", min_altitude: 2400, max_altitude: , season_start: "", season_end: "")

# Load the data with `rails db:seed`
