require "date"
require "petrovich"

current_path = File.dirname(__FILE__)

hbday_file = File.new(current_path + "/files/hbday.csv", "r:UTF-8")
hbday = hbday_file.readlines
hbday_file.close

for day in hbday
  p day.chomp!
  end

time = Date.today

today = time.strftime("%d.%m")
day3 = (Date.today + 3).strftime("%d.%m")
week1 = (Date.today + 7).strftime("%d.%m")
week2 = (Date.today + 14).strftime("%d.%m")

index = hbday.find_index { |i| i == today }
index3 = hbday.find_index { |i| i == day3 }
index1 = hbday.find_index { |i| i == week1 }
index2 = hbday.find_index { |i| i == week2 }

if hbday.index.include?(week2)
  puts "Через 2 недели (#{week2}) день рождения у #{Petrovich(firstname: hbday[index2 + 1], lastname: hbday[index2 + 2]).to(:genitive).to_s}"
end
if hbday.index.include?(week1)
  puts "Через неделю (#{week1}) день рождения у #{Petrovich(firstname: hbday[index1 + 1], lastname: hbday[index1 + 2]).to(:genitive).to_s}"
end
if hbday.index.include?(day3)
  puts "Через 3 дня (#{day3}) день рождения у #{Petrovich(firstname: hbday[index3 + 1], lastname: hbday[index3 + 2]).to(:genitive).to_s}"
end
if hbday.index.include?(today)
  puts "Сегодня (#{today}) день рождения у #{Petrovich(firstname: hbday[index + 1], lastname: hbday[index + 2]).to(:genitive).to_s}"
end

