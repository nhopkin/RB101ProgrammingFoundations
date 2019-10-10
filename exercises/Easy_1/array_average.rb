def average(num_arr)

  add_num = 0
  num_arr.each { |n| add_num += n }
  
  add_num / num_arr.count

end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40