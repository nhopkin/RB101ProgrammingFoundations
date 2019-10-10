puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?(whole number)"
tip = gets.chomp.to_f

tip_amount = bill * (tip/100)

total = bill + tip_amount

puts "The tip is %.2f #{tip_amount}."
puts "The total is %.2f #{total}"
