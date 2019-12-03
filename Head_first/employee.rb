class Employee

  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  # Вызывается сразу при создании экземпляра
  # Передача параметров при создании
  # Если методу не переданны параметры то подставляются умолчания
  # Метод инициализации переменных экземпляра класса
  def initialize(name = "Anonymous",salary = 0.0)
    @name = name
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end

end
