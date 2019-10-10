def xor?(arg1, arg2)
  case
  when arg1 == true && arg2 == true
    false
  when arg1 == false && arg2 == false
    false
  when arg1 == true && arg2 == false
    true
  when arg1 == false && arg2 == true
    true
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false