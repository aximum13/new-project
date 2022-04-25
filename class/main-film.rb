require_relative "class-film"

puts "Фильмы какого режиссера Вы хотите посмотреть?"

director = STDIN.gets.chomp
    films = []
    while films.size < 3
      puts "Какой-нибудь его хороший фильм?"
      film = STDIN.gets.chomp
      title = Film.new(film, director)
      films << title
    end
 

    title = films.sample
puts "И сегодня вечером рекомендую посмотреть: #{title.film}" 
puts "Режиссера: #{title.director}"