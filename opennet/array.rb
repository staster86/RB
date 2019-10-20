contents = ['Содержание'.center(40),
            'Глава 1: Числа'.ljust(40/2) + 'page 1'.rjust(40/2),
            'Глава 2: Буквы'.ljust(40/2) + 'page 72'.rjust(40/2),
            'Глава 3: Переменные'.ljust(40/2) + 'page 118'.rjust(40/2)]

contents.each do |cont|
  puts cont
end

puts "Длина массива #{contents.length}"
