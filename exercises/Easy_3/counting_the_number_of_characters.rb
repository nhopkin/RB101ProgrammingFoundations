puts 'Please enter a word or multiple words:'
user_input = gets.chomp

user_arr = user_input.split('')

user_arr.delete_if {|del_space| del_space == " "}

character_total = user_arr.length

puts "There are #{character_total} characters in \"#{user_input}\"."