puts "What is you hamster's name? "
name = gets.chomp

puts "Please enter volume level (1-10)" 
volume = gets.chomp.to_i

puts "What is the hamster's fur color"
color = gets.chomp

puts "Is hamster goood candidate for adoption?"
good_for_adoption = gets.chomp

puts "Estimated age "
age = gets.chomp 
age == "" ? age = nil : age

print "Name: #{name} Volume: #{volume} color: #{color} good for adoption: #{good_for_adoption} age: #{age}"
