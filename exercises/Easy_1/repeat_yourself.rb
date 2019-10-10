def repeat(str, int)
  if int < 0
    puts 'not a valid integer. please enter a postive integer.'
  else
    int.times {puts str}
  end
end

repeat('hello', 3)