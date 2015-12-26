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
	{ name: 'Reg User2' , user_id: 'ruser2', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: false },
	{ name: 'Reg User3', user_id: 'ruser3', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: false },
        { name: 'Reg User4' , user_id: 'ruser4', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: false },
	{ name: 'Reg User5', user_id: 'ruser5', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: false },     
	{ name: 'Admin User', user_id: 'admin', password_digest: 'password', created_at: DateTime.now, updated_at: DateTime.now, admin: true }
	])

Book.create([
   {isbn: "978-0553593716", title: "A Game Of Thrones", author: "George R.R. Martin", author_id: 1, genre: "Science Fiction", abstract: "In a world where the approaching winter will last four decades, kings and queens, knights and renegades struggle for control of a throne.", pages: 864, image_cover_url:"http://awoiaf.westeros.org/images/thumb/9/93/AGameOfThrones.jpg/200px-AGameOfThrones.jpg", published_on: "2011-03-22", total_in_library: 2, created_at:  DateTime.now, updated_at: DateTime.now },
   {isbn: "978-1503944435", title: "The Good Neighbor", author: "A.J.Banner", author_id: 2, genre: "Contemporary Fiction", abstract: "In a world where the approaching winter will last  four decades, kings and queens, knights and renegades struggle for control of a throne.", pages: 204, image_cover_url:"http://4.bp.blogspot.com/-oufXjRWJi9k/VXxV4NhAeoI/AAAAAAABOUs/V6sjSgZ1a_M/s72-c/517qxXP4dHL.jpg", published_on: "2015-09-01", total_in_library: 2, created_at:   DateTime.now, updated_at: DateTime.now },
   {isbn: "978-1476770390", title: "Revival", author: "Stephen King", author_id: 3, genre: "Horror", abstract: "In a small New England town, over half a century ago, a shadow falls over a small boy playing with his toy soldiers.", pages: 416, image_cover_url:"http://www.charleybrady.com/cbsays/wp-content/uploads/2015/02/stephen_king_revival.jpg", published_on: "2015-05-05", total_in_library: 2, created_at: DateTime.now, updated_at: DateTime.now },
   {isbn: "978-1402754258", title: "Oliver Twist", author: "Charles Dickens", author_id: 4, genre: "Fiction", abstract: "Victorian London, Dickens’ Oliver Twist has captured readers’ hearts for more than 150 years. Today’s children will love it too.", pages: 464, image_cover_url:"https://s-media-cache-ak0.pinimg.com/736x/2c/ed/f8/2cedf860fa40a72d8f7ad6d71187212b.jpg", published_on: "2008-10-07", total_in_library: 2, created_at: DateTime.now, updated_at: DateTime.now },
   {isbn: "978-0486415864", title: "Great Expectations", author: "Charles Dickens", author_id: 5, genre: "Fiction", abstract: "Victorian London, Dickens’ Oliver Twist has captured readers’ hearts for more than 150 years. Today’s children will love it too.", pages: 464, image_cover_url:"http://i43.tower.com/images/mm100332756/great-expectations-charles-dickens-paperback-cover-art.jpg", published_on: "2001-08-01", total_in_library: 2, created_at: DateTime.now, updated_at: DateTime.now },
   {isbn: "978-0553582017", title: "A Dance with Dragons", author: "George R.R. Martin", author_id: 6, genre: "Science Fiction", abstract: "In the aftermath of a colossal battle, the future of the Seven Kingdoms hangs in the balance", pages: 864, image_cover_url:"https://upload.wikimedia.org/wikipedia/en/thumb/5/5d/A_Dance_With_Dragons_US.jpg/65px-A_Dance_With_Dragons_US.jpg", published_on: "2011-03-22", total_in_library: 2, created_at: DateTime.now, updated_at: DateTime.now }
   ])

Author.create([
    { name: "George R.R. Martin", dob: "1948-09-20", nationality: "Caucasian", awards: "2015 Emmy for Outstanding Drama Series", biography: "Martin sold his first short story, 'The Hero,' to Galaxy, a science fiction magazine, which was published in 1971.", image_url: "http://i.onionstatic.com/clickhole/538/16x9/600.jpg"},
    {  name: "A. J. Banner", dob: "1948-09-20", nationality: "Indian", awards: "#1 and New York Times bestselling author", biography: "A. J. Banner illuminates the darkest corners of the human heart with her stories of suspense.", image_url: "https://images-na.ssl-images-amazon.com/images/I/B1cDtaijjZS._UX250_.jpg"},
    {  name: "Stephen King", dob: "1947-09-21", nationality: "Caucasian", awards: "'New York Times'-bestselling novelist", biography: "He graduated from the University of Maine and later worked as a teacher while establishing himself as a writer.", image_url: "http://cdn3-www.shocktillyoudrop.com/assets/uploads/2015/10/StephenKing.jpg"},
    {  name: "Charles Dickens", dob: "1812-02-07", nationality: "Caucasian", awards: "One of the most popular and well-paid celebrities of his era.", biography: "After a difficult childhood during which he had to suspend his education several times to work to support his family, Dickens became a reporter. His first book was 'Sketches by Boz,'.", image_url: "http://a1.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE5NDg0MDU0OTQ1MDM5ODg3.jpg"},
    {  name: "Charles Dickens", dob: "1812-02-07", nationality: "Caucasian", awards: "One of the most popular and well-paid celebrities of his era.", biography: "After a difficult childhood during which he had to suspend his education several times to work to support his family, Dickens became a reporter. His first book was 'Sketches by Boz,'.", image_url: "http://a1.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE5NDg0MDU0OTQ1MDM5ODg3.jpg"},
    {  name: "George R.R. Martin", dob: "1948-09-20", nationality: "Caucasian", awards: "2015 Emmy for Outstanding Drama Series", biography: "Martin sold his first short story, 'The Hero,' to Galaxy, a science fiction magazine, which was published in 1971.", image_url: "https://images-na.ssl-images-amazon.com/images/I/B1cDtaijjZS._UX250_.jpg"}
    ])

# end

