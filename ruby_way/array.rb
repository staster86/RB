#Programms to-do list
puts "Let's start topping up the to-do list" #Давайте начнем пополнять список дел
puts "Go? (y/n)" #Поехали?
start = gets.chomp

if start.downcase == 'y'
  stop = "y"
  affairs = []
  while stop.downcase == "y"
    num_item = 1
    puts "Enter a case, preferably short and clear:"
    enter = gets.chomp.capitalize
    affairs.push(enter)
    puts "Current to-do list"
    affairs.each do |item|
      puts "#{num_item}.#{item}"
      num_item = num_item + 1
    end
    puts "Waiting to continue? (y/n)"
    stop = gets.chomp
  end
else
  puts "Error command!"
end



