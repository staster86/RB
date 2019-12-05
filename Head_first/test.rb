=begin
def yield_number
  yield 4
end

array = [1, 2, 3]

yield_number { |number| array << number }

p array
=end

sum = 0

[1, 2, 3].each {|number| sum += number }

puts sum