def show_dice(num)
  num.times do
    sleep 0.01
    print "#{rand(6) + 1}\r"
  end
end

puts "Сколько кинуть кубиков?"

number = gets.to_i
sum = 0

number.times do
    show_dice(100)
  rand_number = (rand(6) + 1)
  puts rand_number
  sum += rand_number
 end

puts "Сумма бросков: #{sum}" 
