def reverse_words(words)
  reversed_words = words.split(' ').map do |element_size|
    if element_size.length > 4 
      element_size.reverse
    else
      element_size
    end
  end
  reversed_words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS