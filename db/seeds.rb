# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning all database.."
GroupMember.delete_all
Group.delete_all
User.delete_all
Subject.delete_all

puts "Creating database..."


Subject.create!(name: "Mathematics", category: "Sciences", number_of_learners: 4)
Subject.create!(name: "English", category: "Language", number_of_learners: 4)
Subject.create!(name: "Algorithms", category: "IT", number_of_learners: 4)
Subject.create!(name: "Chinese", category: "Language", number_of_learners: 6)
Subject.create!(name: "Philosophy", category: "Arts & History", number_of_learners: 4)
Subject.create!(name: "Economics", category: "Social Sciences", number_of_learners: 6)

User.create!(name: "Hillary", email: "hillary@gmail.com", password: "123123", created_at: "2019-12-02", updated_at: "2019-12-04")
User.create!(name: "Steve", email: "steve@gmail.com", password: "321123", created_at: "2019-12-02", updated_at: "2019-12-04")
User.create!(name: "Mark", email: "mark@gmail.com", password: "123321", created_at: "2019-12-02", updated_at: "2019-12-04")
User.create!(name: "Bill", email: "bill@gmail.com", password: "234123", created_at: "2019-12-02", updated_at: "2019-12-04")
User.create!(name: "Ryan", email: "ryan@gmail.com", password: "123234", created_at: "2019-12-02", updated_at: "2019-12-04")
User.create!(name: "Paula", email: "paula@gmail.com", password: "123765", created_at: "2019-12-02", updated_at: "2019-12-04")

# Group.create!(title: "Algebra Class", description: "Come to my classes!", timeline: "2019-12-04", location: "Atlanta", user_id: 1, subject_id: 10)
# Group.create!(title: "Maths Class", description: "Welcome to my classes!", timeline: "2019-12-04", location: "Paris", user_id: 3, subject_id: 10)

# Group.create!(title: "English Oral Exam", description: "Come to my classes!", timeline: "2019-12-04", location: "Beijing", user_id: 2, subject_id: 11)
# Group.create!(title: "English Grammar", description: "Come to my classes!", timeline: "2019-12-04", location: "Shenzhen", user_id: 3, subject_id: 11)

# Group.create!(title: "Algorithms Lesson", description: "Come to my classes!", timeline: "2019-12-04", location: "Shenzhen", user_id: 3, subject_id: 12)

# Group.create!(title: "Chinese Lessons", description: "Join my classes!", timeline: "2019-12-04", location: "Shenzhen", user_id: 4, subject_id: 13)

# Group.create!(title: "Moral Foundations of Politics", description: "We'll talk about politics :)", timeline: "2019-12-04", location: "Shenzhen", user_id: 5, subject_id: 14)

# Group.create!(title: "Financial Markets", description: "Let's learn more about financial markets!", timeline: "2019-12-04", location: "Shenzhen", user_id: 6, subject_id: 15)

# GroupMember.create!(user_id: 1, group_id: 1)
# GroupMember.create!(user_id: 2, group_id: 1)
# GroupMember.create!(user_id: 3, group_id: 2)
# GroupMember.create!(user_id: 4, group_id: 3)
# GroupMember.create!(user_id: 5, group_id: 4)
