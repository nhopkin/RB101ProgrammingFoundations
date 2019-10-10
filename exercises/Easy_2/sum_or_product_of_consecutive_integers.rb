def sum(n)
  a = 0
  1.upto(n) {|i| a += i}
  a
end

def product(n)
  a = 1
  1.upto(n) {|i| a *= i}
  a
end

puts 'Please enter an integer greater than 0:'
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

if operator == 's'
  add = sum(num)
  puts "The sum of the integers between 1 and #{num} is #{add}"
elsif operator == 'p'
  product = product(num)
  puts "The sum of the integers between 1 and #{num} is #{product}."
else
  #do nothing
end