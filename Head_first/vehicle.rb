class Vehicle #Определение суперкласса

  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage #Расход топлива
    return @odometer / @gas_used
  end

end

class Car < Vehicle #Наследование от суперкласса (Транспортное средство)

end

class Truck < Vehicle #Наследование от суперкласса (Транспортное средство)

  attr_accessor :cargo #Чтение и запись через переменную

  def load_bed(contents)
    puts "Securing #{contents} in tehe tack bed"
    @cargo = contents #Присваивание для использования в других методах класса
  end

end

class Motorcycle < Vehicle

  def steer #Переопределение метода
    puts "Turn front wheel."
  end

end

#car = Car.new
#car.accelerate
#car.odometer = 33322
#car.gas_used = 333

#truck = Truck.new
#truck.load_bed("423 bounce balls")
#puts "The truck carrying #{truck.cargo}"

motorcycle = Motorcycle.new
motorcycle.steer
