puts "Привет, я твой дневник. Скажи мне что у тебя на уме и в душе?"
puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do
  line = STDIN.gets.chomp
  all_lines << line
end

all_lines.pop

time = Time.now

file_name = time.strftime("%d-%m-%Y")
time_string = time.strftime("%H-%M")
separator = "--------------------------------"

file = File.new(current_path + "/files/" + file_name + ".txt", "a:UTF-8")
file.print("\n" + time_string + "\n")

for item in all_lines do
  file.puts(item)
end
file.puts(separator)
file.close

puts "Ваша запись сохранена в файле #{file_name}.txt"
puts "Запись сделана в #{time_string}"