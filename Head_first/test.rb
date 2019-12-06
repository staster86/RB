def find_all
  check = []
  yield.each do |item|
    if yield(item)
      check << item
    end
  end
  check
end