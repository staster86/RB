def my_method
  puts "We're in the method, about to invoke your block!"
  yield("Hello", "World!")
  puts "We're back in the method!"
end

my_method do |param1, param2|
  puts "We're in block!"
  puts param1, param2
end