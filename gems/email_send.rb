require "pony"
require "io/console"

my_mail = "aximum2@mail.ru"
puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо? Введите адрес:"
send_to = STDIN.gets.chomp

puts "Укажите тему письма"
subject = STDIN.gets.chomp

puts "Что написать в письме?"
body = STDIN.gets.chomp

Pony.mail({
   :body => body,
  :to => send_to,
  :from => my_mail,
  :subject => subject,
  :via => :smtp,
  via_options: {
    :address => 'smtp.mail.ru',
    :port => '465',
    :tls => true,
    :user_name => my_mail,
    :password => password,
    :authentication => :plain 
    }
})

puts "Сообщение отправлено"