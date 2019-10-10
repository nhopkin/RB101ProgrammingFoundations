hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
VOWELS = ['a', 'e', 'i', 'o', 'u']

hsh.each do |key, arrs|
  arrs.each do |words|
    words.chars.each do |letters|
      puts letters if VOWELS.include?(letters)
    end
  end
end
