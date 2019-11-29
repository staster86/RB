#Описание класса птица
class Animal
  attr_reader :name, :age #Определение методов чтения атрибутов name и age

  def name=(value) #Метод записи атрибута для @name
    if value == "" #Проверка на пустрое значение атрибута
      raise "Name can't be black!"
    end
    @name = value #Переменная @name класса Bird
  end

  def age=(value) #Метод записи атрибута для @age
    if value < 0 #Проверка возраста
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def move(destination)
    puts "#{name} fly to the #{destination}"
  end

  def talk
    puts "#{name} say Chrip! Chrip!"
  end

  def report_age
    puts "#{name} is #{age} years old."
  end
end

class Dog < Animal
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

#Создание объектов из класса и использование методов и атрибутов
kisen = Bird.new
kisen.name = "Kesha"
kisen.age = 1
kisen.report_age
kisen.talk
kisen.move("tree")

bobik = Dog.new
bobik.name = "Bobik"
bobik.age = 3
bobik.report_age
bobik.talk
bobik.move("yard")
