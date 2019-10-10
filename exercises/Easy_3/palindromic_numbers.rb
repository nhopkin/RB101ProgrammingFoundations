def palindromic_number?(num)
  reversed_num = num.to_s.split('').reverse.join('').to_i
  reversed_num == num
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true