current_path = File.dirname(__FILE__)

separator = "--------------------------------"
file = File.new(current_path + "/files/hello.txt", "w:UTF-8")
file.print("Hello,file!")

file.close
