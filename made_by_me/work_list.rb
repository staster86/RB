# Список дел, хранится в txt файле(todo.txt)
# ---Возможности:
# 1. Просмотр дел
# 2. Добавление дела
# 3. Отправка в архив
# 4. Удаление без возможности восстановить
# 5. Поиск по списку

# Открытие файла и закрытие с передачей всего содержимого в массив
def open_file
  File.open("todo.txt", "w") do |line|
    lines = line.readlines
    puts "#{lines}"
  end
end

def view # Просмотр содержимого файла и вывод на экран
  line_num = 1
  @file.each do |line|
    buf = line
    str = buf.split(";")
    str.each do |item|
      str_print = "#{line_num}. " + item
      puts str_print
      line_num += 1
    end
  end
end

def add(content) # Добавление задания в список
  open_file
  @file << content + ";" + "\n"
end

def delete(number)
  del_attr = number - 1
  buf_arr = []
  @file.each do |line|
    buf = line
    str = buf.split(";")
    str.each do |item|
      buf_arr.push(item)
    end
  puts "Are your sure? (y/n)"
  choice = gets.chomp.capitalize
    if choice == "Y"
      buf_arr.delete_at(del_attr)
    end
  end
end

def find

end
