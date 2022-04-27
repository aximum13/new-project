 class Man
  def initialize(name, surname, age)
@name = name
@surname = surname
@age = age
@film = nil
 end

 def age?
  age >= 60
 end

 def full_name
  if age?
    "#{@name} " + "#{@surname}"
  else
    "#{@name}"
  end
end

  def age 
    @age
  end

  def film
@film
  end

  def film=(title)
    @film = title
  end
end