flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |name, indx|
  flintstones_hash[name] = indx
end

flintstones_hash