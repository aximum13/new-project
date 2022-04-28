passenger = {
  first_name: "Илья",
second_name: "Витальевич",
last_name: "Куриленко",
 city_first: "Москва",
 city_second: "Владивосток",
 ticket: "PM2010398 050291",
 passport:  "45 99 505282"
} 

passenger1 = {
  first_name: "Иннокентий",
second_name: "Иванович",
last_name: "Шниперсон",
 city_first: "Рязань",
 city_second: "Казань",
 ticket: "РМ2010398 050298",
 passport:  "46 01 192872"
} 

passenger2 = {
  first_name: "Иван",
second_name: "Борисович",
last_name: "Бунша",
 city_first: "Горно-Алтайск",
 city_second: "Иркутск",
 ticket: "РМ2010399 050292 ",
 passport:  "47 33 912876"
} 

passengers = [passenger, passenger1, passenger2]

puts "Пассажиры поезда Москва — Владивосток"

passengers.each_with_index do |name, index|
  index += 1
  puts
  puts "* * * Место #{index} * * *"
  puts "Билет №: #{passenger[:ticket]}"
 puts "Маршрут: #{passenger[:city_first]} - #{passenger[:city_second]}"
 puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. #{passenger[:last_name]}"
 puts "Паспорт: #{passenger[:passport]}"
end