palindrom = gets.chomp.delete(" ,.!?;:—-").downcase
p palindrom
if palindrom == palindrom.reverse
  puts "It's palindrom!"
else
  puts "Nop!"
end