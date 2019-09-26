#Игра отгадай число
puts "Добро пожаловать в игру 'Угадай число!'"

#Получение имени игрока и вывод приветствия
print "Как Вас зовут? "
input = gets
name = input.chomp
puts "Здравствуйте #{name}"

#Сохраниние случайного числа
puts "Отгадайте число от 1 до 100"
target = rand(10) + 1

#Отслеживание количества попыток
num_guesses = 0

#Признак продолжения игры
guesses_it = false
puts "У Вас осталось #{10 - num_guesses} попыток."
puts "Введите число от 1 до 10: "
guess = gets.to_i

#Сравненее введённого числа с загаданным
# и вывод соответствующего сообщения
if guess < target
  puts "Не повезло число больше"
elsif guess > target
  puts "Не повезло число меньше"
elsif guess == target
  puts "Урааа!!!"
  puts "Вы отгадали число с #{num_guesses} попыток"
  guesses_it = true
end

#Если попыток не осталось сообщить загаданное число
if not guesses_it
  puts "Извините, попытки закончились, было загадано #{target}"
end
