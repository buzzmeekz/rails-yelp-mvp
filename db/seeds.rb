# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "+33 153 43 43 40",
    category:     Restaurant::CATEGORIES.sample 
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "+33 1 46 33 29 82",
    category:     Restaurant::CATEGORIES.sample
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "+33 1 44 14 41 14",
    category:     Restaurant::CATEGORIES.sample
  },
  {
    name:         "ASPIC",
    address:      "24 rue de la Tour D Auvergne 75009 Paris",
    phone_number: "+33 (0) 9 82 49 30 98",
    category:     Restaurant::CATEGORIES.sample
  },
  {
    name:         "L'Abeille",
    address:      "10 Avenue d'Iena 75116 Paris",
    phone_number: "(33 1) 53 67 19 90",
    category:     Restaurant::CATEGORIES.sample
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
