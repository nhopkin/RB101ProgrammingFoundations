['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {'a'=>'ant','a'=>'bear','a'=>'cat'}
# => the object is a hash and the block states
# => the letter at index 0 of each string will
# => be the key and the word the value