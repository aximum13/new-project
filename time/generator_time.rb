current_path = File.dirname(__FILE__)

file_brow = current_path + "/data/brow.txt"
file_eyes = current_path + "/data/eyes.txt"
file_nose = current_path + "/data/nose.txt"
file_jaws = current_path + "/data/jaws.txt"

if File.exist?(file_brow)
  brow = File.new(file_brow, "r:UTF-8")
  sample_brow = brow.readlines
  brow.close
else
  abort "Лоб не найден!"
end
if File.exist?(file_eyes)
  eyes = File.new(file_eyes, "r:UTF-8")
  sample_eyes = eyes.readlines
  eyes.close
else
  abort "Глаза не найдены!"
end
if File.exist?(file_nose)
  nose = File.new(file_nose, "r:UTF-8")
  sample_nose = nose.readlines
  nose.close
else
  abort "Нос не найден!"
end
if File.exist?(file_jaws)
  jaws = File.new(file_jaws, "r:UTF-8")
  sample_jaws = jaws.readlines
  jaws.close
else
  abort "Рот не найден!"
end

generator = sample_brow.sample, sample_eyes.sample, sample_nose.sample, sample_jaws.sample

time = Time.now
file_name = "face_" +  time.strftime("%Y.%m.%d %H-%M-%S") + ".txt"
 
file = File.new(current_path + "/files/" + file_name , "a:UTF-8")

file.puts(generator)
file.close

 
