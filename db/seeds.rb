# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

starters, mains = Menu.create([{ name: "Starters" }, { name: "Mains" }])

starters.dishes.create(name: "Soup", price: 3)
mains.dishes.create(name: "Salad", price: 5)
