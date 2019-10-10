def multiply(num_arr, factor)
  mult_num_arr = []
  counter = 0

  loop do
    break if counter == num_arr.size

    mult_num_arr << num_arr[counter] * factor
    counter += 1
  end

mult_num_arr
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]