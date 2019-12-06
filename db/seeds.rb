# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning all database.."
GroupMember.delete_all
Group.destroy_all
User.delete_all
Subject.delete_all

puts "Creating database..."


Subject.create!(name: "Mathematics", category: "Sciences", number_of_learners: 4, photo: "https://images.pexels.com/photos/399161/pexels-photo-399161.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Subject.create!(name: "English", category: "Language", number_of_learners: 4, photo: "https://images.pexels.com/photos/1037995/pexels-photo-1037995.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=5000")
Subject.create!(name: "Algorithms", category: "IT", number_of_learners: 4, photo:"https://images.pexels.com/photos/3255761/pexels-photo-3255761.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Subject.create!(name: "Chinese", category: "Language", number_of_learners: 6, photo: "https://images.pexels.com/photos/414648/pexels-photo-414648.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Subject.create!(name: "Philosophy", category: "Arts & History", number_of_learners: 4, photo: "https://images.pexels.com/photos/1352751/pexels-photo-1352751.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Subject.create!(name: "Economics", category: "Social Sciences", number_of_learners: 6, photo: "https://images.pexels.com/photos/268415/pexels-photo-268415.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Subject.create!(name: "Physics", category: "Sciences", number_of_learners: 6, photo: "https://images.pexels.com/photos/2186246/pexels-photo-2186246.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Subject.create!(name: "Chemistry", category: "Sciences", number_of_learners: 6, photo: "https://images.pexels.com/photos/399160/pexels-photo-399160.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")

User.create!(name: "Hillary", email: "hillary@gmail.com", password: "123123")
User.create!(name: "Steve", email: "steve@gmail.com", password: "123123")
User.create!(name: "Mark", email: "mark@gmail.com", password: "123123")
User.create!(name: "Bill", email: "bill@gmail.com", password: "123123")
User.create!(name: "Ryan", email: "ryan@gmail.com", password: "123123")
User.create!(name: "Paula", email: "paula@gmail.com", password: "123123")

# Group.create!(title: "Algebra Class", description: "Come to my classes!", timeline: "2019-12-04", location: "Atlanta", user_id: 1, subject_id: 1)
# Group.create!(title: "Maths Class", description: "Welcome to my classes!", timeline: "2019-12-04", location: "Paris", user_id: 3, subject_id: 1)

# Group.create!(title: "English Oral Exam", description: "Come to my classes!", timeline: "2019-12-04", location: "Beijing", user_id: 2, subject_id: 2)
# Group.create!(title: "English Grammar", description: "Come to my classes!", timeline: "2019-12-04", location: "Shenzhen", user_id: 3, subject_id: 2)

# Group.create!(title: "Algorithms Lesson", description: "Come to my classes!", timeline: "2019-12-04", location: "Shenzhen", user_id: 3, subject_id: 3)

# Group.create!(title: "Chinese Lessons", description: "Join my classes!", timeline: "2019-12-04", location: "Shenzhen", user_id: 4, subject_id: 3)

# Group.create!(title: "Moral Foundations of Politics", description: "We'll talk about politics :)", timeline: "2019-12-04", location: "Shenzhen", user_id: 5, subject_id: 4)

# Group.create!(title: "Financial Markets", description: "Let's learn more about financial markets!", timeline: "2019-12-04", location: "Shenzhen", user_id: 6, subject_id: 4)

# GroupMember.create!(user_id: 1, group_id: 1)
# GroupMember.create!(user_id: 2, group_id: 1)
# GroupMember.create!(user_id: 3, group_id: 2)
# GroupMember.create!(user_id: 4, group_id: 3)
# GroupMember.create!(user_id: 5, group_id: 4)
