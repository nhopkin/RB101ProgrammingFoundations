munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
age_arr = []
total_age_male = 0

munsters.each do |name, hash|
  age_arr << hash["age"] if hash['gender'] == 'male'
end
age_arr.each {|age| total_age_male += age}

p total_age_male
