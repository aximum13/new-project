
require_relative "lib/product"    
require_relative "lib/book"
require_relative "lib/film"
 
products = []

film = Film.new(price: 290, amount: 10, title: "\"Семь\"", year: "1997", director: "Дэвид Финчер")
book = Book.new(price: 450, amount: 1, title: "\"Harry Potter and the Chamber of Secrets\"", genre: "фантастический роман", author: "Джоан Роулинг")


puts 'Вот какие товары у нас есть:'


film.year = 1994
film.amount = 5

puts film
