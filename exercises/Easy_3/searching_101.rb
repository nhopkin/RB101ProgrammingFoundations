def validate_number(num)
  if  (num.to_i.to_s == num && num.to_i.to_s != 0)
    true
  else
    puts 'not a valid integer'
  end
end

num1 = ''
num2 = ''
num3 = ''
num4 = ''
num5 = ''
num6 = ''
loop do
  loop do
    puts 'Enter the 1st number:'
    num1 = gets.chomp
    break if validate_number(num1)
  end
  loop do 
    puts 'Enter the 2nd number:'
    num2 = gets.chomp
    break if validate_number(num2)
  end
  loop do
    puts 'Enter the 3rd number:'
    num3 = gets.chomp
    break if validate_number(num3)
  end
  loop do
    puts 'Enter the 4TH number:'
    num4 = gets.chomp
    break if validate_number(num4)
  end
  loop do
    puts 'Enter the 5TH number:'
    num5 = gets.chomp
    break if validate_number(num5)
  end
  loop do
    puts 'Enter the 6TH number:'
    num6 = gets.chomp
    break if validate_number(num6)
  end
  
  num_arr = [num1, num2, num3, num4, num5]
  num_arr_mutate = []

  num_arr_mutate = num_arr.map! do |i|
    i = i.to_i
  end

  if num_arr_mutate.include?(num6.to_i)
    puts "The number #{num6} appears in #{num_arr}."
  else
    puts "The number #{num6} does not appear in #{num_arr}."
  end
  
    puts 'Would you like to keep going? (Y or N)'
    answer = gets.chomp.downcase

    break unless answer == 'y'
end
