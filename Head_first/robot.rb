class Robot
  attr_accessor :head, :eyes, :feet

  def head
    @head
  end

  def arms=(value)
    @arms = value
  end

  def feet=(value)
    @feet = value
  end

  attr_reader :legs, :body

  def assemble
    @legs = "RubyTek Walkers"
    @body = "BurlyBot Frame"
    @head = "SuperAI 9000"
  end

  def diagnostic
    puts @arms
    puts @eyes
  end
end

robot = Robot.new

robot.assemble

robot.arms = "MagCrips Claws"
robot.eyes = "X-Ray Scopes"
robot.feet = "MagGrip Boots"

puts robot.head
puts robot.legs
puts robot.body
puts robot.feet
robot.diagnostic

#SuperAI 9000
#RubyTek Walkers
#BurlyBot Frame
#MagGrip Boots
#MagGrip Claws
#X-Ray Scopes
