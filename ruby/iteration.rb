def practice
  puts "hi"
  name1 = "Bob"
  name2 = "Joesph"
  yield("Sandy", "Jessica")
end

practice { |name1, name2| puts "Great to see you, #{name1} and #{name2}"}

fancy_array = [1,2,3,4,5]

ugly_hash = {
  "breakfast" => "eggs",
  "lunch" => "sandwich",
  "dinner" => "salmon"
}


fancy_array.each do |item|
  puts "#{item}"
end

fancy_array.map! do |item|
  p item**2
end

puts fancy_array

ugly_hash.each do |alpha, beta|
  p "I love eating #{beta} for #{alpha}!"
end

rainbows = ugly_hash.map do |num1, num2|
  p "I love eating #{num2} for #{num1}!"
end

p rainbows
