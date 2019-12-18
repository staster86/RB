class Person

  def greet_by_name(name)
    "Hello #{name}!"
  end

end

class Friend < Person

  def greet_by_name(name)
    basic_greeting = super(name) #Переменной присваивается значение возвращаемое из родительского класса
    "#{basic_greeting} Glad to see you!" #при этом значение не передаётся дальше родительского метода
  end

end