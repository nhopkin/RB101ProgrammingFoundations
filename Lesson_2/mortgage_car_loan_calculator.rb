# mortgage_car_loan_calculator.rb

def prompt(message)
  puts "=> #{message}"
end

prompt "welcome to the loan calculator!"
loop do
  principal = ''
  loop do
    prompt "What's your loan amount?"
    principal = gets.chomp

    if principal.empty? || principal.to_f == 0
      prompt 'Please enter a valid positve number.'
    else 
      principal = principal.to_f
      break
    end
  end

  interest_rate = ""
  loop do
    prompt "Select which interest rate type you know, select 1 for annual and 2 for monthly."
    interest_type = gets.chomp
    
    prompt "What's your interest rate?(enter whole percentage i.e. 5 = 5%)"
      interest_rate = gets.chomp
    if interest_rate.empty? || interest_rate.to_f == 0
      prompt 'Please enter a valid positve number.'
    else
      interest_rate = interest_rate.to_f / 100
    end

    if interest_type == '1'
      interest_rate = interest_rate / 12
      break
    elsif interest_type == '2'
      break
    else 
      prompt 'Please enter a 1 or 2.'
    end
  end

  n = ''
  loop do
    prompt "What's the loan duration?(in months)"
    n = gets.chomp

    if n.empty? || n.to_f == 0
      prompt 'Please enter a valid positve number.'
    else
      n = n.to_f
      break
    end
  end

  monthly_payment = principal * (interest_rate / (1 - (1 + interest_rate)**(-n)))

  prompt "Your monthly payment is: #{monthly_payment}"

  puts "Would you like to calculate another monthly payment? Y or N"
  answer = gets.chomp.downcase

  if answer == "y"
    #do nothing
  else
    break
  end
end