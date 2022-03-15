# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

starters, mains = Menu.create([{ name: "Starters" }, { name: "Mains" }])
Dish.create([{ name: "Soup", price: 3, menu: starters }, { name: "Salad", price: 5, menu: mains }])
