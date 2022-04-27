current_path = "./" + File.dirname(__FILE__)    

films_path = current_path + "/data/films.txt"

if File.exist?(films_path)
  f = File.new(films_path, "r:UTf-8")
  film = f.readlines
  f.close
else
  abort "Файл не найден"
end

# movie = film.sample
number = rand(film.length + 1)
 if number % 2 == 1
  number -= 1
 end

puts " Сегодня Вам предлагается к просмотру фильм: "
puts film[number]
puts film[number + 1]

