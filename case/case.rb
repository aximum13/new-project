puts "Врага какого персонажа вы хотите узнать?"

hero = STDIN.gets.chomp.downcase

case hero
when hero = "бэтмен"
  puts "Джокер"
when hero = "шерлок холмс"
  puts "Профессор Мориарти"
when hero = "буратино"
  puts "Карабас-Барабас"
when hero = "фродо бэггинс"
  puts "Саурон"
when hero = "моцарт"
  puts "Сальери"
else
  puts "Не удалось найти врага"
end
