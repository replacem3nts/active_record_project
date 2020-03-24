Category.destroy_all
Author.destroy_all
User.destroy_all
Book.destroy_all
Userbook.destroy_all

fiction = Category.create(name: "Fiction")
self_help = Category.create(name: "Self Help")
gardening = Category.create(name: "Gardening")

john_s = Author.create(name: "John Steinbeck")
james_j = Author.create(name: "James Joyce")
dale_c = Author.create(name: "Dale Carnegie")
wilinda = Author.create(name: "Wilinda Rockefeller")

hal = User.create(name: "Hal Sheridan")
rose = User.create(name: "Rose Barley")

grapes = Book.create(title: "The Grapes of Wrath", author: john_s, category: fiction)
mice = Book.create(title: "Of Mice and Men", author: john_s, category: fiction)
artist = Book.create(title: "Portrait of the Artist", author: james_j, category: fiction)
how_to = Book.create(title: "How to Win Friends and Influence People", author: dale_c, category: self_help)
apples = Book.create(title: "The Study of Pomology", author: wilinda, category: gardening)
flowers = Book.create(title: "Native Flowers of Sumatra", author: wilinda, category: gardening)
carniv = Book.create(title: "Life of a Carnivorous Plant", author: wilinda, category: fiction)

Userbook.create(book: grapes, user: hal, due_date: "2020-04-01", returned?: false)
Userbook.create(book: artist, user: hal, due_date: "2020-06-10", returned?: true)
Userbook.create(book: apples, user: rose, due_date: "2020-04-01", returned?: false)
Userbook.create(book: flowers, user: rose, due_date: "2020-04-21", returned?: false)
Userbook.create(book: carniv, user: rose, due_date: "2020-05-07", returned?: true)
Userbook.create(book: how_to, user: rose, due_date: "2020-02-29", returned?: true)