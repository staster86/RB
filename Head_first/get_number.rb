#Игра отгадай число
puts "Добро пожаловать в игру 'Угадай число!'"

#Получение имени игрока и вывод приветствия
print "Как Вас зовут? "
input = gets
name = input.chomp
puts "Здравствуйте #{name}"

#Сохраниние случайного числа
puts "Отгадайте число от 1 до 100"
target = rand(100) + 1

#Отслеживание количества попыток
num_guesses = 0

puts "У Вас осталось #{10 - num_guesses} попыток."
puts "Введите число от 1 до 100: "

guess = gets.to_i
