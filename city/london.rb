def visit_london (city, sight)
  puts "Приехали в #{city}
  #{sight.join(", ")}"
end

city = "Лондон"
sight = ["Биг Бэн", "Трафальгарская площадь", "Букингемский дворец"]
visit_london(city, sight)