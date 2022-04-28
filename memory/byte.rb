puts "Введите число"
number = STDIN.gets.to_i
puts "Введите слово или словосочетание"
string =STDIN.gets.chomp

puts "В числе #{number} - #{number.size} байт"
puts "В строке \"#{string}\" - #{string.bytesize} байт"




 