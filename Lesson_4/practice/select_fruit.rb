def select_fruit(produce)
  key_arr = produce.keys
  fruits_hsh = {}
  counter = 0
  
  loop do
    break if counter == key_arr.size
    current_key = key_arr[counter]
    current_value = produce[current_key]

    if current_value == 'Fruit'
      fruits_hsh[current_key] = current_value
    end
    
   counter += 1
  end

  fruits_hsh
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}