correct_path = File.dirname(__FILE__)

file = File.read(correct_path + "/data/words.txt", r:"UTF-8")
regex = /\b[а-яА-Яa-zA-Z]{3}\b/
words = file.scan(regex)
word_size = words.size

puts "Количество слов: " + word_size.to_s
