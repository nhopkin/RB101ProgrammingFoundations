def generate_uuid
  possible_chars = []
  (0..9).each {|num| possible_chars << num.to_s}
  ('a'..'f').each {|ltr| possible_chars << ltr}

  uuid = ""
  uuid_section = [8, 4, 4, 4, 12]

  uuid_section.each_with_index do |section_count, index|
    p index
    section_count.times {uuid += possible_chars.sample}
    uuid += "-" unless index == uuid_section.size - 1
  end
  uuid
end