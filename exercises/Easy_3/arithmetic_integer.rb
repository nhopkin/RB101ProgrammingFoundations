def validate_number(num)cd
  if  (num.to_i.to_s == num && num.to_i.to_s != 0 && num.to_i >= 0)
    true
  else
    puts 'not a valid integer'
  end
end

def number_operations(num1,num2)
  num1 = num1.to_i
  num2 = num2.to_i

  add = num1 + num2
  subtract = num1 - num2
  product = num1 * num2
  quotient = num1 / num2
  remainder = num1 % num2
  power = num1 ** num2

  puts "#{num1} + #{num2} = #{add}"
  puts "#{num1} - #{num2} = #{subtract}"
  puts "#{num1} * #{num2} = #{product}"
  puts "#{num1} / #{num2} = #{quotient}"
  puts "#{num1} % #{num2} = #{remainder}"
  puts "#{num1} ** #{num2} = #{power}"
end

num1 = ''
num2 = ''

loop do
  loop do
    puts 'Enter the first number:'
    num1 = gets.chomp
    break if validate_number(num1)
  end
  loop do
    puts 'Enter the second number:'
    num2 = gets.chomp
    break if validate_number(num2)
  end
  
  number_operations(num1, num2)

  puts 'Continue?(Y or N)'
  continue = gets.chomp.downcase

  break unless continue == 'y'
end
