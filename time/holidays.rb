current_path = File.dirname(__FILE__)

holidays_file = File.new(current_path + '/files/holidays.txt', 'r:UTF-8')
holidays = holidays_file.readlines
holidays_file.close

for day in holidays
  day.chomp!
end

time = Time.now
week_day = time.wday

if [6, 0].include?(week_day)
  puts 'Сегодня выходной'
elsif holidays.include?(time.strftime('%d.%m'))
  puts 'Сегодня праздник'
else
  puts 'Сегодня будний день'
end

puts
