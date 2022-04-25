require_relative "class-man"

man1 = Man.new("Юрий", "Иванович", 51)
man2 = Man.new("Константин", "Львович", 32)
man3 = Man.new("Сергей", "Дмитриевич", 71)

puts "У нас есть 3 человека"

puts man1.full_name
puts "И ему #{man1.age} — #{man1.old? ? 'пожилой' : 'молодой'}"
puts man2.full_name
puts "И ему #{man2.age} — #{man2.old? ? 'пожилой' : 'молодой'}"
puts man3.full_name
puts "И ему #{man3.age} — #{man3.old? ? 'пожилой' : 'молодой'}"