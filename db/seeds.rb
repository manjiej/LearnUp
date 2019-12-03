# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning all database.."
Subject.destroy_all

puts "Creating database..."

Subject.create(name: "Mathematics", category: "Sciences", number_of_learners: "4")
Subject.create(name: "English", category: "Language", number_of_learners: "6")
Subject.create(name: "Algorithms", category: "IT", number_of_learners: "4")
Subject.create(name: "Chinese", category: "Language", number_of_learners: "6")
Subject.create(name: "Philosophy", category: "Arts & History", number_of_learners: "4")
Subject.create(name: "Education", category: "Social Sciences", number_of_learners: "6")


