def visit_rome (city, sight)
  puts "Приехали в #{city}
  #{sight.join(", ")}"
end

city = "Рим"
sight = ["Пантеон", "Собор Святого Петра", "Колизей"]
visit_rome(city, sight)