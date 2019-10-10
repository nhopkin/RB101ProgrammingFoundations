# calculator.rb
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

prompt('Welcome to the Calculator! Enter your name:')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('Make sure to use a valid name.')
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = gets.chomp 

    if valid_number?(number1)
      break
    else
      prompt("Hmm...That doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp 

    if valid_number?(number2)
      break
    else
      prompt("Hmm...That doesn't look like a valid number")
    end
  end

  prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) division")
  operator = gets.chomp

  result =  case operator
    when '1'
      number1.to_i + number2.to_i
    when '2'
      number1.to_i - number2.to_i
    when '3'
      number1.to_i * number2.to_i
    when '4'
      number1.to_f / number2.to_f
    end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the calculator. Good bye!')
