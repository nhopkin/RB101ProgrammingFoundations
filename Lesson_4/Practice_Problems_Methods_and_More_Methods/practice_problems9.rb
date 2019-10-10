{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, 'bear']
# => map returns an array nil because ant is less than 3 chars and 
# => evaluates to false bear has more than three chars