require 'digest'

puts "Введите слово или фразу для шифрования:"
user = STDIN.gets.chomp

puts "Каким способом зашифровать:
1. MD5
2. SHA1"

shifr = STDIN.gets.to_i

while 
  if shifr == 1
 shifr_user = Digest::MD5.hexdigest(user)
 abort "Вот что получилось: #{shifr_user}"
    elsif shifr == 2
  shifr_user = Digest::SHA1.hexdigest(user)
  abort "Вот что получилось: #{shifr_user}"
    else
  puts "Введите 1 или 2"
  shifr = STDIN.gets.to_i
  end
end
