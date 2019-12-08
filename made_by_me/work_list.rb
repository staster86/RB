# Список дел, хранится в txt файле(todo.txt)
# ---Возможности:
# 1. Просмотр дел
# 2. Добавление дела
# 3. Отправка в архив
# 4. Удаление без возможности восстановить
# 5. Поиск по списку

def open_file # Открытие файла и закрытие с передачей всего содержимого в массив
  @file = []
  File.open("todo.txt") do |line|
    @file = line.readlines
  end
end

def view # Просмотр содержимого файла и вывод на экран
  line_num = 1
  @file.each do |line|
    buf = line
    str = buf.split(";")
    str.each do |item|
      puts "#{line_num}. " + item
      line_num += 1
    end
  end
end

def add(content) # Добавление задания в список
  @file << content + ";"
  @file_add = @file
end

def save
  File.open("todo.txt", "w") do |line|
    line << @file_add.join
  end
end

def arhive

end

def delete

end

def find

end