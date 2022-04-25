file_name = ARGV[0]

if file_name == nil
  abort "Укажите имя файла в качестве аргумента программы"
end

unless File.exist?(file_name)
  abort "Файл не найден!"
end

f = File.new(file_name, "r:UTF-8")
lines = f.readlines
f.close

lines_all = lines.size
lines_empty = 0
last_lines = []

lines.each_with_index{|line, index|
 if line == "\n"
  lines_empty += 1
 end

 if lines.size - index <= 5
  last_lines << line
 end
}

puts "Открыли файл: #{file_name}"
puts "Всего строк: #{lines_all}"
puts "Пустых строк: #{lines_empty}"
puts "Последние 5 строк файла: "
puts
 for line in last_lines
puts line
end 