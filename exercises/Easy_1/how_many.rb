def count_occurrences(repeated)
  occurrences = {}
  
  repeated.each do |n|
    occurrences[n] = repeated.count(n)
  end

  occurences = occurrences.uniq

  occurrences.each do |vehicle, times| 
    puts "#{vehicle} => #{times}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)