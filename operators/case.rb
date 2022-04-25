answer = rand

if (answer > 0.5)
  puts ("Выпал орел")
elsif (answer.round(1) == 0.5)
  puts ("Монета встала на ребро")
else
  puts ("Выпала решка")
end