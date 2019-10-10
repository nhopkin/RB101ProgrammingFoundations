def real_palindrome?(phrase)
  remove_special_chars = phrase.downcase.split(' ').join.gsub(/[^A-Za-z0-9 ]/, '').split('')
  phrase_reversed = remove_special_chars.reverse.join('')
  phrase_reversed.downcase == remove_special_chars.join('')
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false