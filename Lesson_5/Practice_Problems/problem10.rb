arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hsh|
  store_hash = {}
  hsh.each do |ltr, num|
    store_hash[ltr] = num + 1
  end
  store_hash
end
