require "date"

puts "Введите начальный год:"
start_year = gets.chomp.to_i

puts "Введите конечный год:"
finish_year = gets.chomp.to_i

puts "\n"

puts "Список високосных годов:\n"

start_year.upto(finish_year) do |i|
  if Date.gregorian_leap?(i) == true
    puts i
  end
end
