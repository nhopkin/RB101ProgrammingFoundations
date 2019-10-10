def substrings(str)
  results = []
  start_index = 0
  end_index = start_index + 1
  loop do
    break if start_index == str.size
    loop do
      break if end_index == str.size
      results << str[start_index..end_index]
      end_index += 1
    end
    start_index += 1
    end_index = start_index + 1
  end

   results
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  palindrome_results = []
  substrings_arr = []
  substrings_arr = substrings(str)

  substrings_arr.each do |str|
    palindrome_results << str if is_palindrome?(str)
  end

  palindrome_results
end

puts palindrome_substrings('halo')
puts palindrome_substrings('hello')
