class Employee

  attr_reader :name

  def initialize(name = "Anonymous")
    self.name = name # Метод self вызывает метод name именно этого экземпляра
  end

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def print_name
    puts "Name: #{name}" # Тоже самое что #{self.name}
  end

end

# Оплата по ставке
class SalaryEmployee < Employee

  attr_reader :salary

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
  def initialize(name = "Anonimous", salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (self.salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end

end

# Почасовая оплата труда
class HourlyEmployee < Employee

  # Почасовая зарплата, часов в неделю
  attr_reader :hourly_wage, :hours_per_week

  # Параметры по умолчанию при создании HourlyEmployee.security_guard
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0.0
      raise "Negative salary!!!"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0.0
      raise "Negative business works!"
    end
    @hours_per_week = hours_per_week
  end

  def initialize(name = "Anonimous", hourly_wage = 0, hours_per_week = 0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end

end