def palindrome?(phrase)
  phrase_reversed = phrase.split(//).reverse.join
  phrase == phrase_reversed
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true