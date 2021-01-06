# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.find_or_create_by(name: "flour, all-purpose", category: "pantry")
Food.find_or_create_by(name: "flour, bread", category: "pantry")
sugar = Food.find_or_create_by(name: "sugar, white (caster)", category: "pantry")
Food.find_or_create_by(name: "brown sugar", category: "pantry")
Food.find_or_create_by(name: "salted butter", category: "pantry")
Food.find_or_create_by(name: "butter, unsalted", category: "pantry")
Food.find_or_create_by(name: "milk, whole", category: "pantry")
cream = Food.find_or_create_by(name: "heavy cream", category: "pantry")
Food.find_or_create_by(name: "egg", category: "pantry")
eggwhite = Food.find_or_create_by(name: "egg white", category: "pantry")
Food.find_or_create_by(name: "egg yolk", category: "pantry")
Food.find_or_create_by(name: "cumin seeds, whole", category: "pantry")
Food.find_or_create_by(name: "cumin seeds, ground", category: "pantry")
Food.find_or_create_by(name: "coriander seeds, whole", category: "pantry")
Food.find_or_create_by(name: "coriander seeds, ground", category: "pantry")
Food.find_or_create_by(name: "cardamom pods, whole", category: "pantry")
Food.find_or_create_by(name: "cayenne chili, ground", category: "pantry")
Food.find_or_create_by(name: "turmeric, ground", category: "pantry")
Food.find_or_create_by(name: "mustard seeds, ground", category: "pantry")
vanilla = Food.find_or_create_by(name: "vanilla extract", category: "pantry")