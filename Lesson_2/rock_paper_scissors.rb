VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts "=> #{message}"
end

winning_moves = { 'rock' => ['scissors'],
                  'paper' => ['rock'],
                  'scissors' => ['paper'] }

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'paper' || second == 'spock')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt ('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = ['rock', 'paper', 'scissors'].sample

  puts "You chose: #{choice} Computer chose: #{computer_choice}."

  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = gets.chomp.downcase
  break if answer.start_with?('n')
end

prompt('Thank you for playing.')