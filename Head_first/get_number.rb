#Игра отгадай число
puts "Добро пожаловать в игру 'Угадай число!'"

#Получение имени игрока и вывод приветствия
print "Как Вас зовут? "
input = gets
name = input.chomp
puts "Здравствуйте #{name}"

#Сохранение случайного числа
puts "Отгадайте число от 1 до 100"
target = rand(10) + 1

#попытки
num_guesses = 10

#Признак продолжения игры
guesses_it = false

#Начало цикла игры
while guesses_it == false && num_guesses != 0 do
  puts "У Вас осталось #{num_guesses} попыток."
  puts "Введите число от 1 до 10: "
  num_guesses -= 1
  guess = gets.to_i

  #Сравнение введённого числа с загаданным и вывод соответствующего сообщения
  if guess < target && num_guesses != 0
    puts "Не повезло, число БОЛЬШЕ"
  elsif guess > target && num_guesses != 0
    puts "Не повезло, число МЕНЬШЕ"
  elsif guess == target
    puts "Урааа!!!"
    puts "Вы отгадали число с #{10 - num_guesses} попыток"
    guesses_it = true
  end
end

#Если попыток не осталось сообщить загаданное число
unless guesses_it
  puts "Извините, попытки закончились! (число #{target})"
end
