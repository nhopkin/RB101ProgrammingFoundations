ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
tot_age = 0

ages.each_value do |age|
tot_age += age
end

tot_age