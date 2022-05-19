<<<<<<< HEAD
require "date" #Подключаем файл date для работы с классом Date
require "petrovich" #Подключаем gem "petrovich" для работы со склонением имени, фамилии

current_path = File.dirname(__FILE__) #задаём корректный путь для получения пути к папке текущей программы

hbday_file = File.new(current_path + "/files/hbday.txt", "r:UTF-8") # открываем файл для чтения
hbday = hbday_file.readlines  # создаём один массив строк, разбитых по символам переноса
hbday_file.close #закрываем файл

for day in hbday
  day.chomp! # Удаляем символ переноса строки из каждого элемента, отрезая последний символ
end

time = Date.today #создаём новую переменную и записываем в неё текущую дату

today = time.strftime("%d.%m") #форматируем дату под день и месяц (07.07)
day3 = (Date.today + 3).strftime("%d.%m") # создаём метки времени для будущего сравнения и также форматируем
week1 = (Date.today + 7).strftime("%d.%m")
week2 = (Date.today + 14).strftime("%d.%m")

index = hbday.find_index { |i| i == today } 
# перебираем массив на совпадение данных: дата рождения (без года рождения) с сегодняшней датой и возвращаем индекс элемента, если он есть в массиве
index3 = hbday.find_index { |i| i == day3 } 
# перебираем массив на совпадение данных: дата рождения (без года рождения) с датой за 3 дня до дня рождения 
#и возвращаем индекс элемента, если он есть в массиве
index1 = hbday.find_index { |i| i == week1 } 
# перебираем массив на совпадение данных: дата рождения (без года рождения) с датой за 1 неделю до дня рождения 
#и возвращаем индекс элемента, если он есть в массиве
index2 = hbday.find_index { |i| i == week2 } 
# перебираем массив на совпадение данных: дата рождения (без года рождения) с датой за 2 неделю до дня рождения 
#и возвращаем индекс элемента, если он есть в массиве

if hbday.include?(week2) #если данные "дата за 2 неделю до дня рождения" есть в массиве 
  puts "Через 2 недели (#{week2}) день рождения у #{Petrovich(firstname: hbday[index2 + 1], lastname: hbday[index2 + 2]).to(:genitive).to_s}" 
  # В качестве значений для аргументов класс Petrovich мы находим элемент по индексу, 
  # который обнаружили ранее (индекс элемента соответствует дате рождения из файла), следующей строкой (или элементом массива) является имя сотрудника, 
  # а после него - фамилия сотрудника. Поэтому для нахождения индекса элемента "Имени" необходимо к индексу элемента "Дата" прибавить 1, 
  # соответствено для нахождения индекса элемента "Имени" 
  # к индексу элемента "Дата" прибавить 2.
end
if hbday.include?(week1) #если данные "дата за 1 неделю до дня рождения" есть в массиве 
  puts "Через неделю (#{week1}) день рождения у #{Petrovich(firstname: hbday[index1 + 1], lastname: hbday[index1 + 2]).to(:genitive).to_s}"
end
if hbday.include?(day3) #если данные "дата за 3 дня до дня рождения" есть в массиве 
  puts "Через 3 дня (#{day3}) день рождения у #{Petrovich(firstname: hbday[index3 + 1], lastname: hbday[index3 + 2]).to(:genitive).to_s}"
end
if hbday.include?(today) #если данные "сегодняшняя дата" есть в массиве 
  puts "Сегодня (#{today}) день рождения у #{Petrovich(firstname: hbday[index + 1], lastname: hbday[index + 2]).to(:genitive).to_s}"
end

