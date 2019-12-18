#Описание класса птица
class Animal
  attr_reader :name, :age #Определение методов чтения атрибутов name и age

  def name=(value) #Метод записи атрибута для @name, при вызове метода у экземпляра класса можно передать значение
    if value == "" #Далее проверка на пустрое значение атрибута
      raise "Name can't be black!"#Остановка с указание ошибки
    end
    @name = value #Переменная @name класса Bird
  end

  def age=(value) #Метод записи атрибута для @age
    if value < 0 #Проверка возраста на отрицательное значение
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def move(destination)
    puts "#{name} runs to the #{destination}"
  end

  def talk
    puts "#{name} say Chrip! Chrip!"
  end

  def report_age
    puts "#{name} is #{age} years old."
  end
end

class Dog < Animal

  def to_s #Переопределение метода от супер класса Object
    puts "#{@name} the dog, age #{@age}"
  end

  def talk
    puts "say Bark! Bark!"
  end

end

class Cat < Animal
  def talk
    puts "say Meow! Meow"
  end
end

class Bird < Animal

end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls"
    super #Вызывается родительских метод но параметр
  end     #передаётся от метода armadillo.move(destination)
end
