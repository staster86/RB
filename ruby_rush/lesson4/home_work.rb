rezultat = "Наибольшее число: "

puts "Введите первое число:"
num_1 = gets.chomp.to_f

puts "Введите второе число:"
num_2 = gets.chomp.to_f

if num_1 > num_2
  puts rezultat + num_1.to_s
elsif num_1 < num_2
  puts rezultat + num_2.to_s
elsif num_1 == num_2
  puts "Числа равны"
end
