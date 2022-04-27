def visit_paris (city, sight)
  puts "Приехали в #{city}
  #{sight.join(", ")}"
end

city = "Париж"
sight = ["Эйфелева Башня", "Лувр", "Нотр-Дам де Пари"]
visit_paris(city, sight)