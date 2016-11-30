# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s = Seller.new
s.name = 'abcdef'
s.email = 'abc@abc.com'
s.password = 'abc2'
s.save!
Seller.create(name: 'Ima Bookseller', email: "me@me.com", password: "nil")

Book.create(name: 'Biology', price: 150.00, image: "https://www.mheonline.com/assets/images/cover/large/0078945860.jpg", seller_id: 5)
Book.create(name: 'Calculus', price: 249.99, image: "https://images-na.ssl-images-amazon.com/images/I/51-G-148jJL._SX258_BO1,204,203,200_.jpg", seller_id: 6)
Book.create(name: 'Chemistry', price: 50.00, image: "https://images-na.ssl-images-amazon.com/images/I/51GVJE1DjIL.jpg", seller_id: 5)

s.books << Book.where(name: 'Biology')
s.books << Book.where(name: 'Calculus')
s.books << Book.where(name: 'Chemistry')

Seller.create(name: "Barack Obama", email: "obama@us.com")
Seller.create(name: "Joe Biden", email: "biden@us.com")
Seller.create(name: "Donald", email: "don@us.com")
Seller.create(name: "Dirks", email: "dirks@berkeley.com")