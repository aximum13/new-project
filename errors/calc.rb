puts "Первое число: "
number1 = gets.chomp.to_i
puts "Второе число: "
number2 = gets.chomp.to_i
puts "Выберите операцию (+ - * /): "
user_input = gets.chomp
 
begin
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
rescue ZeroDivisionError
  puts "На ноль делить нельзя"
end
puts "Результат: #{result}"
