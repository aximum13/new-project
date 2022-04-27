puts "Введите email: "
email = gets.chomp.downcase
email_check = /^\w+@\w+\.[a-z]+$/i

if email.match(email_check)
puts "Спасибo! " + email
else
  puts "Какая-то фигня!
Это не email"
end
 