def multisum(num)
  sum = 0

  1.upto(num) do |value|
    if value % 3 == 0 || value % 5 == 0
      sum += value
    else
      #do nothing
    end
  end
  sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168