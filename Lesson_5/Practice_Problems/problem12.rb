arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
new_hsh = {}

arr.each do |indx|
  new_hsh[indx[0]] = indx[1]
end

new_hsh