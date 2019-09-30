def accelerate
  puts "Визг колёс!"
  puts "Машина стремительно разгоняется!"
end

def sound_horn
  puts "Нажимаем кнопку сигнала"
  puts "Beep, Beep!!!"
end

def use_headlights (brightness = "ближний свет")
  puts "Включаем свет #{brightness} фары"
  puts "Остерегайтесь оленей!"
end

accelerate
sound_horn
use_headlights
