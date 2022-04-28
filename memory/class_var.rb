variable = nil

class MyClass 
  def initialize 
    @variable = 1
  end
  def check_variables
    puts "Переменная 'variable': #{defined?(variable)}"
    puts "Переменная '@variable': #{defined?(@variable)}"
  end
end

class_var = MyClass.new 
class_var.check_variables

puts "Переменная 'variable': #{defined?(variable)}"
puts "Переменная '@variable': #{defined?(@variable)}"