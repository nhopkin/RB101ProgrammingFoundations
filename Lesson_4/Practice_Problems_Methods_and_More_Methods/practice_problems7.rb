[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => 1
# => any? checks to see if any value in the array evaluates to true and 1 does because of the block
# => true