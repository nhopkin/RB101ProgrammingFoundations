puts 'What is your name?'
user_name = gets.chomp

if user_name.end_with?('!')
  puts "HELLO #{user_name.delete('!').upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}."
end