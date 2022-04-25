current_path = "./" + File.dirname(__FILE__)    

films_path = current_path + "/data/films.txt"

if File.exist?(films_path)
  f = File.new(films_path, "r:UTf-8")
  film = f.readlines
  f.close
else
  abort "Файл не найден"
end

movie = film.sample
 
 puts " Сегодня Вам предлагается к просмотру фильм: ", movie
 