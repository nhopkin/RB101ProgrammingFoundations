flintstones= %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  idx = flintstones.index(name) if name.include?('Be')
end

idx