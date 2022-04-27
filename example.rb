#1 переменные

hi = [
  "Привет, дорогой друг. Отвечаю на твой вопрос...",
  "Кто вопрошает, тот получит ответ:",
  "Здравствуй, смертный. Сегодня для тебя такой ответ:",
]

answers = [
  # Положительные
  "Бесспорно",
  "Предрешено",
  "Никаких сомнений",
  "Определённо да",
  "Можешь быть уверен в этом",

  # Нерешительно положительные
  "Мне кажется — «да»",
  "Вероятнее всего",
  "Хорошие перспективы",
  "Знаки говорят — «да»",
  "Да",

  # Нейтральные
  "Пока не ясно, попробуй снова",
  "Спроси позже",
  "Лучше не рассказывать",
  "Сейчас нельзя предсказать",
  "Сконцентрируйся и спроси опять",

  # Отрицательные
  "Даже не думай",
  "Мой ответ — «нет»",
  "По моим данным — «нет»",
  "Перспективы не очень хорошие",
  "Весьма сомнительно",
]

puts hi.sample
puts
puts answers.sample

puts nil

#2

number1 = 1
number2 = 2

puts number1
puts number2

if (number1 > number2)
  puts "Наибольшее число " + number1.to_s
end

if (number1 < number2)
  puts "Наибольшее число " + number2.to_s
end

if (number1 == number2)
  puts "Числа равны "
end

puts nil

#3

number1 = 2308
puts "Первое число " + number1.to_s

number2 = 13
puts "Второе число " + number2.to_s

number3 = (number1 + number2) / 2
puts number3

puts nil

#4

number = 987298

if (number.even?)
  puts "Число чётное"
end

puts nil

#5

time = Time.now
week_day = time.wday

if (week_day == 6 || week_day == 0)
  puts "Сегодня выходной"
else
  puts "Сегодня будний день"
end

puts nil

#6

answer = rand

if (answer > 0.5)
  puts ("Выпал орел")
elsif (answer.round(1) == 0.5)
  puts ("Монета встала на ребро")
else
  puts ("Выпала решка")
end

#7 теория (ввод данных)

# puts "Привет! Как тебя зовут?"
# name = gets.chomp
# puts "Привет, " + name + ", как дела?"

# puts "Вы решили прогуляться в Южном Бутово и наткнулись на спортивных ребят
# 1. Попытаться убежать
# 2. Продолжать идти"

# choice = gets.chomp

# if choice == "1"
#   abort "Ребя без труда догнали вас и побили. Не знаю, за что"
# else
#   puts "Один из ребят вышел вперёд и спросил \"Сиги есть?\"
#   1. Дать прикурить
#   2. -- Не курю"

#   choice = gets.chomp

#   if choice == "1"
#     abort "Прикурив, ребята отправились дальше"
#   else
#     abort "Ребята расстроились и побили вас. Теперь уже ясно, за что"
#   end
# end

# #8

# puts ("Введите число 1:")
# a = gets.to_i
# puts ("Введите число 2:")
# b = gets.to_i
# puts ("Введите число 3:")
# c = gets.to_i

#  number = (a + b + c) / 3

# puts ("Среднее арифметическое: " + number.to_s)

#9

# puts ("Сколько сейчас стоит 1 доллар в рублях?")
# usd = gets.to_f
# puts ("Сколько  у вас рублей?")
# rub = gets.to_f

# dol = (rub / usd).round(2)
# puts ("Ваши запасы равны: $ " + dol.to_s)

#10

# puts ("Какая у вас на руках валюта?
#   1. Рубли
#   2. Доллары")
# valute = gets.to_i

# if (valute == 1)
#   puts ("Сколько сейчас стоит 1 доллар в рублях?")
#   usd = gets.to_f
#   puts ("Сколько  у вас рублей?")
#   rub = gets.to_f
#   dol = (rub / usd).round(2)
#   abort ("Ваши запасы равны: $ " + dol.to_s)
# elsif (valute == 2)
#   puts ("Сколько сейчас стоит 1 доллар в рублях?")
#   usd = gets.to_f
#   puts ("Сколько  у вас долларов?")
#   dol = gets.to_f
#   rub = (dol * usd).round(2)
#   abort ("Ваши запасы равны: $ " + rub.to_s)
# else
#   abort ("Попробуйте ещё раз")
# end

# 11

# puts "Вы поехали на халтуру и забыли мундштук от трубы. Ваши действия:
#   1. Вернётесь за ним.
#   2. Спросите у музыканта запасной мундштук.
#   3. Сообщите об этом руководителю.
#   4. Попытаетесь сыграть без мундштука."

#   choice = gets.chomp

#   if choice == "1"
#     abort "Вы не успели вернуться, сорвали халтуру и остались без денег. Лошара."
#     elsif choice == "2"
#       puts "Он ответил, что есть только мундштук от валторны. Вы:
#         1. Ну что делать, сыграем на нём.
#         2. Яжтрубач, какой нах мундштук от валторны?! Без него сыграю"
#         choice = gets.chomp
#         if choice == "1"
#           abort "Вы отыграли с трудом эту халтуру (всё-таки неудобно играть на мундштуке от валторны на трубе) и заработали свои 1000р"
#         else
#           abort "Во время халтуры вы сыграли отвратительно и вас лишили половины денег. Лошара."
#         end
#       elsif choice == "3"
#         abort "Он тебя снимает с халтуры и больше на них не зовёт. Лошара."
#       elsif choice == "4"
#         abort "Во время халтуры вы сыграли отвратительно и вас лишили половины денег. Лошара."
#       else
#         abort "Попробуйте ещё раз"
#   end

#12

# randomNum = rand(17)
# puts "Загадано число от 0 до 16, отгадайте какое?"

# number = gets.to_i

# if number == randomNum
#   abort "Ура, вы угадали!"
# elsif number > randomNum && (number - randomNum).abs <= 2
#   puts "Тепло (нужно меньше)"
# elsif number < randomNum && (number - randomNum).abs <= 2
#   puts "Тепло (нужно больше)"
# elsif number > randomNum && (number - randomNum).abs > 2
#   puts "Холодно (нужно меньше)"
# elsif number < randomNum && (number - randomNum).abs > 2
#   puts "Холодно (нужно больше)"
# end
# number = gets.to_i
# if number == randomNum
#   abort "Ура, вы угадали!"
# elsif number > randomNum && (number - randomNum).abs <= 2
#   puts "Тепло (нужно меньше)"
# elsif number < randomNum && (number - randomNum).abs <= 2
#   puts "Тепло (нужно больше)"
# elsif number > randomNum && (number - randomNum).abs > 2
#   puts "Холодно (нужно меньше)"
# elsif number < randomNum && (number - randomNum).abs > 2
#   puts "Холодно (нужно больше)"
# end
# number = gets.to_i
# if number == randomNum
#   abort "Ура, вы угадали!"
# elsif number > randomNum && (number - randomNum).abs <= 2
#   puts "Тепло (нужно меньше)"
# elsif number < randomNum && (number - randomNum).abs <= 2
#   puts "Тепло (нужно больше)"
# elsif number > randomNum && (number - randomNum).abs > 2
#   puts "Холодно (нужно меньше)"
# elsif number < randomNum && (number - randomNum).abs > 2
#   puts "Холодно (нужно больше)"
# end

# abort "Вы не угадали, это было " + randomNum.to_s

#13

men = ["Gena", "George", "Misha"]
women = ["Katrin", "Liza", "Masha"]
all = men + women
# men.concat(women)

puts "Мужчины"
puts men.to_s

puts "Женщины"
puts women.to_s

# mens.concat(women)
puts "Все вместе"
puts all.to_s
# puts men.to_s

# 14

numbers = [1, 2, 3, 4, 5]

puts numbers.to_s
puts numbers.reverse.to_s
puts numbers.to_s

numbers.reverse!

puts numbers.to_s

#15

# model = ["Lada", "Hyundai", "Volvo", "Toyota", "BMW", "Mazda", "Kia", "Wolksvagen", "Peugeot", "Skoda"]
# puts "У нас всего " + model.length.to_s + " машин. Вам какую?"
# number = gets.to_i - 1

# if number >= 0 && number < model.length
#   puts "Поздравляем, вы получили " + model[number]
# else
#   puts "Извините, машины с таким номером у нас нет :("
# end

#16

# puts "Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"
# condition = ["Камень", "Ножницы", "Бумага"]
# user = gets.to_i
# while user > 2 || user < 0
#   puts "Введите число от 0 до 2"
#   user = gets.to_i
# end
# computer = rand(3)

# puts "Вы выбрали: " + condition[user]
# puts "Компьютер выбрал: " + condition[computer]

# if user == computer
#   puts "У вас ничья!"
# elsif user == 0 && computer == 1
#   puts "Вы победили!"
# elsif user == 1 && computer == 2
#   puts "Вы победили!"
# elsif user == 2 && computer == 0
#   puts "Вы победили!"
# else
#   puts "Победил Компьютер"
# end

# 17

# array = []
# puts "Введите число"
# number = gets.to_i
# index = 1
# summa = 0
# while index <= number
#   array << index
#   summa += index
#   index += 1
# end

# puts array.to_s
# puts 'Сумма чисел: ' + summa.to_s

# 18

# array = []
# puts "Введите число"
# number = gets.to_i

# index = 1
# while index <= number
#   range = rand(101)
#   array << range
#   index += 1
# end

# max_value = 0
# for item in array
#   if item > max_value
#     max_value = item
#   end
# end

# puts array.to_s
# puts "Самое большое число: " + max_value.to_s # array.max.to_s

# 19

# array = [1, 2, 3, 4, 5, 6, 7]
# array1 = []
# puts "Исходный массив: " + array.to_s
# for item in array
#   array1.unshift(item)
# end
# puts "Новый массив, полученный из исходного: " + array1.to_s

array = [1, 2, 3, 4, 5, 6, 7]
puts "Исходный массив: " + array.to_s
array1 = []
for item in array
  array1.unshift(item)
end

puts "Новый массив, полученный из исходного: " + array1.to_s
