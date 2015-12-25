# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 4.times do


#Book.create([
  #{ title: 'The Hobbit', author:'Tolkien', pages:384, price:22.68 },
  #{ title: 'Atlas Shrugged', author:'Ayn Rand', pages:1200, price: 18.81 },
  #{ title: "Ender's Game", author:'Orson Scott Card', pages:352, price:4.83 },
  #{ title: 'Hamlet', author:'Shakespeare', pages:342, price:5.34 }
   # ])

User.create([
	{ name: 'Reg User1', user_id: 'ruser1', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: false },
	{ name: 'Reg User1' , user_id: 'ruser2', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: false },
	{ name: 'Reg User1', user_id: 'ruser3', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: false },
	{ name: 'Admin User1', user_id: 'admin', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: true }
	])

# end

