#ARGV позволяет передавать параметры при запуске руби файла
#Пример запуска ruby ex13.rb 1 2 3 4
first, second, = ARGV

puts "Полученный первый параметр: #{first}"
puts "Второй параметр: #{second}"

puts "Третий: "
third = STDIN.gets.chomp
puts "Третий: #{third}"

puts "Четвёртый: "
fourth = STDIN.gets.chomp
puts "Четвёртый: #{fourth}"

puts first, second, third, fourth
