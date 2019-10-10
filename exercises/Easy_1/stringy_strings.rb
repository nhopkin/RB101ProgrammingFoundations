def stringy(num)
  ones_zeros_arr = []

  num.times do |n|
    if n.even?
      ones_zeros_arr << 1
    else
      ones_zeros_arr << 0
    end
  end

  ones_zeros_arr.join

end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'