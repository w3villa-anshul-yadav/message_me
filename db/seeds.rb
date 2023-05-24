# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(user_name: "anshul",password:"123")
User.create(user_name: "chiku",password:"123")
User.create(user_name: "harsh",password:"123")
User.create(user_name: "abhishek",password:"123")
User.create(user_name: "satyam",password:"123")
User.create(user_name: "himanshu",password:"123")

Message.create(body:"hey message 9",user_id: User.first.id)
Message.create(body:"hey message 2",user_id: User.second.id)
Message.create(body:"hey message 3",user_id: User.first.id)
Message.create(body:"hey message 4",user_id: User.third.id)
Message.create(body:"hey message 5",user_id: User.first.id)
Message.create(body:"hey message 6",user_id: User.last.id)
Message.create(body:"hey message 7",user_id: User.second.id)
Message.create(body:"hey message 8",user_id: User.third.id)