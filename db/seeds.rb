# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Beer.destroy_all
Brewery.destroy_all

b1 = Brewery.create(name: "The Drunken Coder")
b2 = Brewery.create(name: "Denver Beer Co.")
b3 = Brewery.create(name: "Left Hand")

Beer.create(name: "C++++", abv: 7, type_of_beer: "Blonde Ale", brewery: b1)
Beer.create(name: "Princess Yum Yum", abv: 5, type_of_beer: "Raspberry Kolsch", brewery: b2)
Beer.create(name: "Nitro", abv: 8, type_of_beer: "Milk Stout", brewery: b3)
Beer.create(name: "The Other One", abv: 4, type_of_beer: "Pale Ale", brewery: b1)