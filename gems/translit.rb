require "translit"

puts "Введите фразу для транслитерации: "
user_input = gets.chomp
puts Translit.convert(user_input)
puts "Введите фразу для обратной транслитерации: "
user_input = gets.chomp
 puts Translit.convert(user_input)

 