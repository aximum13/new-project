puts "Сколько кинуть кубиков?"

number = gets.to_i

number.times do 
  puts rand(6) + 1
end