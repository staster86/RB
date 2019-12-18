class Robot_v2

  attr_accessor :name #Открываем доступ к переменной экземпляра Robot_v2.new.name = ("Terminator")
                      #пример использования terminator.name
  def activate
    puts "#{name} is powering up"
  end

  def move(destination)
    puts "#{@name} walks to #{destination}"
  end

end

class TankBot < Robot_v2

  attr_accessor :weapon

  def attack
    puts "#{@name} fires #{@weapon}"
  end

  def move(destination)
    puts "#{@name} rolls to #{destination}"
  end

end

class SolarBot < Robot_v2

  def activate
    puts "#{@name} deploys solar panel"
    super
  end

end