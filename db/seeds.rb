# Templates
# Shop.create(name: "", hours: "", address: "", coordinates: "")
# Coffee.create(name: "", description: "", roaster: "", producer: "", washing_station: "", min_altitude: , max_altitude: , season_start: "", season_end: "")
# Flavor.create(name: "", description: "", tier: )
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
Shop.create(name: "Cherry Espresso Bar", hours: "6:30-17:00 Mo-Fr, 7:00-17:00 Sa-Su", address: "4877 Laurel St, New Orleans, LA 70115", coordinates: "29.9183317, 90.1101652", coffee_ids: {})
Shop.create(name: "Cherry Coffee Roasters", hours: "7-17:00 Mo-Su", address: "1581 Magazine St, New Orleans, LA 70130", coordinates: "29.9328293, 90.0752705", coffee_ids: {})

Origin.create(continent: "Africa", country: "Ethiopia", state: "Southern Nations, Nationalities, and Peoples' Region", zone: "Sidama", region: "Bensa", village: "Keramo")
ProcessingMethod.create(name: "fully washed", description: "")
ProcessingMethod.create(name: "screen size 13 separation", description: "")
Variety.create(name: "74/158", description: "")
Variety.create(name: "74/110", description: "")
Variety.create(name: "Setami", description: "")
Flavor.create(name: "date", description: "", tier: 3)
Flavor.create(name: "peach", description: "The floral, perfuming, fruity, sweet, slightly sour aromatic associated with peaches", tier: 3)
Flavor.create(name: "black tea", description: "A somewhat brown, musty, dried plant and dried bark aromatic associated with the oxidization of tea leaves.", tier: 2)
Flavor.create(name: "passion fruit", description: "", tier: 3)
Flavor.create(name: "honey", description: "Sweet, light brown, slightly spicy aromatic associated with honey.", tier: 3)
Flavor.create(name: "bergamot", description: "", tier: 3)

Coffee.create(
  name: "Keramo",
  description: "",
  roaster: "Roseline",
  producer: "Multiple small farms surrounding the Keramo mill",
  washing_station: "Bombe Washing Station",
  min_altitude: 2400,
  max_altitude: 0,
  season_start: "",
  season_end: "",
  shop_ids: [1],
  processing_method_ids: [1, 2],
  variety_ids: [1, 2, 3],
  flavor_ids: [1, 2, 3, 4, 5, 6],
  origin_ids: [1]
)

ProcessingMethod.create(name: "controlled yeast fermentation", description: "")
Variety.create(name: "Red Bourbon", description: "")
Flavor.create(name: "cherry", description: "The sour, fruity, slightly bitter, floral aromatic associated with cherries.", tier: 3)
Flavor.create(name: "mandarin", description: "", tier: 3)
Flavor.create(name: "assam", description: "", tier: 3)
Origin.create(continent: "Africa", country: "Burundi", province: "Kayanza", commune: "Kayanza", region: "Kibingo")

Coffee.create(
  name: "Kibingo",
  description: "",
  roaster: "Sweet Bloom",
  producer: "Various",
  washing_station: "Kibingo",
  min_altitude: 1892,
  max_altitude: 1892,
  season_start: "",
  season_end: "",
  shop_ids: [1],
  processing_method_ids: [3],
  variety_ids: [4],
  flavor_ids: [7, 8, 9],
  origin_ids: [2]
)

# Load the data with `rake db:seed` or `rails db:seed`
