 require_relative "class-man"
 require_relative "class-film"

 man1 = Man.new("Max", "Pain", 38)
 man2 = Man.new("Harry", "Potter", 41)
 man3 = Man.new("John", "Malkovich", 78)

 man1.film = Film.new("Harry Potter 3", "Alfonso Cuarón")
 man2.film = Film.new("Harry Potter 1", "Сhristopher Colambus")
 man3.film = Film.new("Harry Potter 6", "David Yates")

 puts man1.full_name
 puts "с любимым фильмом: #{man1.film.title}"
 puts man2.full_name
 puts "с любимым фильмом: #{man2.film.title}"
 puts man3.full_name
 puts "с любимым фильмом: #{man3.film.title}"
