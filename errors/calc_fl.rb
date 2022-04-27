puts "Первое число: "
number1 = gets.chomp.to_f
puts "Второе число: "
number2 = gets.chomp.to_f
puts "Выберите операцию (+ - * /): "
user_input = gets.chomp
  
  case user_input
  when "+"
    result = number1 + number2
  when "-"
    result = number1 - number2
  when "*"
    result = number1 * number2
  when "/"
    result = number1 / number2
  else
    puts "Введите знак операции"
  end
  
puts "Результат: #{result}"
