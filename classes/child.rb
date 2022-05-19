class Parent
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def obedience
    true
  end
end

class Child < Parent
  def obedience
    false
  end
end

batya = Parent.new("Батя")
son = Child.new("Вовочка")

puts "#{batya.name} послушный: #{batya.obedience}"
puts "#{son.name} послушный: #{son.obedience}"
