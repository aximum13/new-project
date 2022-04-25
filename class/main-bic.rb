require_relative "class-bic"

man1 = BodyBuilder.new
man2 = BodyBuilder.new
man3 = BodyBuilder.new

5.times do
  man1.pump("triceps")
end
3.times do
  man1.pump("biceps")
end
8.times do
  man1.pump("deltovidka")
end
7.times do
  man2.pump("triceps")
end
7.times do
  man2.pump("biceps")
end
8.times do
  man2.pump("deltovidka")
end
6.times do
  man3.pump("triceps")
end
9.times do
  man3.pump("biceps")
end
10.times do
  man3.pump("deltovidka")
end

puts "Первый мен:"
man1.show_muscles
puts
puts "Второй мен:"
man2.show_muscles
puts
puts "Третий мен:"
man3.show_muscles
puts
 