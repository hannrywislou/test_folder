array = %w[Dasha Masha Pasha]

array.each { |name| puts name }

puts '____'

array.each do |name|
  if name == 'Masha'
    array.push 'Sasha'
  end
  puts name
end