class Boat

  def initialize(name)
    @name = name
  end

  def info
    puts "Name: #{@name}"
    puts "Motor type: #{@motor_type}"
  end

end

class PowerBoat < Boat

  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end

end