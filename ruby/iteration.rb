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

new_array = [1,2,3,4,5,6,7,8,9,10]

odd_array = new_array.delete_if { |i|  i % 2 == 0 }

p odd_array

words = ["apples", "hat", "apartment", "hose", "car", "dictionary"]

words.select! { |value| value.length > 4 }

p words

green_hash = {
  alpha: 1000,
  beta: 2000,
  charlie: 3000,
  delta: 4000
}

green_hash.reject! { |h, i| i < 2500 }

puts green_hash

pink_array = [10,20,30,40,50,60,70,80,90]

red_array = pink_array.delete_if do |element|
  if element <= 33
    true 
  end
end

p red_array










