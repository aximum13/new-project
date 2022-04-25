puts "Введите строку с хэштегами:"
user_string = gets.chomp.downcase
user_check =  /#[[:word:]-]+/

hashtags = user_string.scan(user_check)

if user_string.scan(user_check)
  puts 'Нашли вот такие хэштеги: ' + hashtags.join(', ')
else
  puts "no"
end

 
