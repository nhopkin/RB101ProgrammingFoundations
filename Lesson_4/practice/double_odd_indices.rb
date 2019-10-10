def double_numbers(num_arr)
  counter = 0

  loop do 
    break if counter == num_arr.size
    num_arr[counter] *= 2 if counter.odd?
    counter += 1
  end
  num_arr
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]