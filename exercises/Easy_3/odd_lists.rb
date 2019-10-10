def oddities(arr)
  i = 0
  new_arr = []

  while i < arr.length
    new_arr << arr[i] if i.even?
    i +=1
  end
  p new_arr
end


puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
