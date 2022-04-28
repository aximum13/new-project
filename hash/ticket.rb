 passenger = {
   first_name: "Илья",
second_name: "Витальевич",
last_name: "Куриленко",
  city_first: "Москва",
  city_second: "Владивосток",
  ticket: "PM2010398 050291",
  passport:  "45 99 505282"
 } 

 puts "Билет №: #{passenger[:ticket]}"
 puts "Маршрут: #{passenger[:city_first]} - #{passenger[:city_second]}"
 puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. #{passenger[:last_name]}"
 puts "Паспорт: #{passenger[:passport]}"
 