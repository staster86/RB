def pig_latin(words)
  original_length = 0
  new_length = 0

  words.each do |word|
    puts "Original word: #{word}"
    original_length += word.length # Узнаём длину строки
    letters = word.chars # Делаем из строки массив из букв
    first_letter = letters.shift # Вырезаем первый символ
    new_word = "#{letters.join}#{first_letter}ay" # превращаем массив обратно в строку и добавляем в конце вырезанную букву
    puts "Pig Latin word: #{new_word}" # Печать оригинальной длины слова
    new_length += new_word.length # Сохраняем новую длину форматированного слова
  end

  puts "Total original length: #{original_length}"
  puts "Total Pig Latin length: #{new_length}"

end
