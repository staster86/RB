def find_adjective(string) # Метод вызвается для поиска прилагательных
  words = string.split(" ") # Строка преобразуется в массив слов
  index = words.find_index("is") # Поиск индекса слова "is"
  words[index + 1] # Возвращает слово следующее за "is"
end

lines = [] # Переменная должна создаваться за пределами блока
File.open("review.txt") do |review_file| # Файл открывается и автоматически закрывается после рабооты с ним
  lines = review_file.readlines # Каждая строка массива читается в массив
end

# Отброс лишних строк
relevant_lines = lines.find_all { |line| line.include?("Truncated") } # Оставляем строки с названием фильма
reviews = relevant_lines.inject { |line| line.include?("--") } # Удаляем подписи

# Обработка каждого отзыва
adjectives = reviews.map do |review|
  adjective = find_adjective(review) # Ищем прилагательное
  "'#{adjective.capitalize}'" # Возвращаем прилагательное
end

puts "The critics agree, Truncated is:"
puts adjectives