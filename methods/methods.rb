# # def S(rad)
# #   return 3.14159 * rad ** 2
# # end
# # puts "Введите радиус круга: "
# # radius = gets.to_f
# # puts "Площадь второго круга: #{S(radius)}"

# # puts "Введите радиус второго круга: "
# # radius = gets.to_f
# # puts "Площадь второго круга: #{S(radius)}"

# def first_elements(array, number)
#   result_array = []
#   counter = 0

#   while counter < number
#     if array.size <= counter
#       break
#     end
#     result_array << array[counter]
#     counter += 1
#   end
#   return result_array
# end

# original_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# puts "Вот какая палка колбасы у нас есть: "
# puts original_array.to_s

# puts "Сколько первых элементов вам отрезать?"
# number = gets.to_i

# puts "Вот ваша колбаса:"
# puts first_elements(original_array, number).to_s

# def star(number)
#   result_string = ''
#   while result_string.length < number do
#     result_string += '*'
#   end
#   puts result_string
# end

# puts "Сколько вам звезд на погоны?"
# stars = gets.to_i
# puts "Вот ваши звезды :) "
# star(stars)

# def user_number(number, random)
#   if number == random
#     abort "Ура, вы угадали!"
#   elsif number > 16 || number < 0
#     puts "Введите число от 0 до 16"
#   elsif number > random && (number - random).abs <= 2
#     puts "Тепло (нужно меньше)"
#   elsif number < random && (number - random).abs <= 2
#     puts "Тепло (нужно больше)"
#   elsif number > random && (number - random).abs > 2
#     puts "Холодно (нужно меньше)"
#   elsif number < random && (number - random).abs > 2
#     puts "Холодно (нужно больше)"
#   end
# end

# random = rand(17)
# puts "Загадано число от 0 до 16, отгадайте какое?"
# index = 0
# while index < 5
#   index += 1
#   number = gets.to_i
#   user_number(number, random)
# end
# abort "Вы не угадали, это было " + random.to_s

def variant(number, one, two, three)
  ostatok = number % 100
  if (ostatok >= 11 && ostatok <= 14 || ostatok >= 5 && ostatok <= 10 || ostatok == 0)
    return three
  elsif (ostatok == 1)
    return one
  elsif (ostatok >= 2 && ostatok <= 4)
    return two
  end
end

skolko = gets.to_i

puts "#{skolko} #{variant(skolko, "негритёнок", "негритёнка", "негритят")} " + "#{variant(skolko, "пошел", "пошли", "пошли")} купаться в море!"
