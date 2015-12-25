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

Book.create([
   {isbn: "1-2345-3378-4", title: "The Good Life", author: "Jay Mcinerney", author_id: 6, genre: "Fiction", abstract: "In The Good Life, Jay McInerney unveils a story of love, family, conflicting desires, and catastrophic loss in his most powerfully searing work thus far.Clinging to a semiprecarious existence in TriBeCa, Corrine and Russell Calloway have survived a separation and are wonderstruck by young twins whose provenance is nothing less than miraculous.", pages: 345, image_cover_url: "http://bookcoverarchive.com/images/books/the_good_life.large.jpg", published_on: "2007-04-27", total_in_library: 2},
   {isbn: "1-4000-4092-2", title: " Programming the Universe: A Quantum Computer Scientist Takes On the Cosmos", author: "Seth Lloyd", author_id: 7, genre: "Adventure", abstract: "Is the universe actually a giant quantum computer? According to Seth Lloyd, the answer is yes.  All interactions between particles in the universe, Lloyd explains, convey not only energy but also information–in other words, particles not only collide, they compute. What is the entire universe computing, ultimately? “Its own dynamical evolution,” he says. “As the computation proceeds, reality unfolds.” Programming the Universe, a wonderfully accessible book, presents an original and compelling vision of reality, revealing our world in an entirely new light.", pages: 267, image_cover_url: "http://bookcoverarchive.com/images/books/programming_the_universe.large.jpg", published_on: "2007-03-13", total_in_library: 6}
   ])

# end

