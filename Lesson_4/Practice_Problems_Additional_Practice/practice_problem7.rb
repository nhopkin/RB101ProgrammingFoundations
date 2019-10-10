statement = "The Flintstones Rock"
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letter_cnt_hsh = {}
letters.each do |letter|
  letter_count = statement.scan(letter).count
  letter_cnt_hsh[letter] = letter_count if letter_count > 0
end

letter_cnt_hsh