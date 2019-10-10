def add_arr(num_arr)
  add_num = 0
  add_arr = num_arr.map { |n| add_num += n }
  add_arr.pop
end

def sum(int)
  int_arr = int.to_s.split('').map(&:to_i)
  
  add_arr(int_arr)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
