def show_dice(num)
  num.times do
    sleep 0.01
    print "#{rand(6) + 1}\r"
  end
end

puts "Сколько кинуть кубиков?"

number = gets.to_i

number.times do
  show_dice(100)
  puts (rand(6) + 1)
end
