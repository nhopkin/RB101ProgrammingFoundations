puts 'Enter a name:'
user_name = gets.chomp

if user_name.empty?
  p "Teddy is #{rand(20..200)} years old!"
else
  p "#{user_name} is #{rand(20..200)} years old!"
end