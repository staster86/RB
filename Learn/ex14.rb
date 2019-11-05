user_name, user_name_two = ARGV
promt = '> '

puts "Hi #{user_name} and #{user_name_two}"
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name} and #{user_name_two}?"
puts promt
likes = STDIN.gets.chomp

puts "Where do you live  #{user_name}?"
puts promt
lives = STDIN.gets.chomp

puts "What kind of computerdo you have? ", promt
computer = STDIN.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
Yout live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
