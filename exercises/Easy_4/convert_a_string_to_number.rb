def string_to_integer(num_str)

  num_str_arr = []

  num_str.split('').each do |num|
    case num
    when '0'
      num_str_arr << 0
    when '1'
      num_str_arr << 1
    when '2'
      num_str_arr << 2
    when '3'
      num_str_arr << 3
    when '4'
      num_str_arr << 4
    when '5'
      num_str_arr << 5
    when '6'
      num_str_arr << 6
    when '7'
      num_str_arr << 7
    when '8'
      num_str_arr << 8
    when '9'
      num_str_arr << 9
    end
  end
  p num_str_arr.inject {|num, num2| (num * 10) + num2}
end




p string_to_integer('4321') == 4321
p string_to_integer('570') == 570