original_string = gets.strip.downcase

# Получаем перевернутую строку и записываем её в переменную reverse_string.
reverse_string = original_string.reverse

# Сравниваем обе строки и выносим вердикт
if reverse_string == original_string
  puts 'Да, это палиндром'
else
  puts 'Нет, это не палиндром'
end