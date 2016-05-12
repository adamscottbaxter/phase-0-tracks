=begin

create new hash with client data for:
client's name - string
number of children - integer
decor theme - string
number of rooms - integer
speaks english - boolean

print hash when all data entered

ask user "update needed?" one time
may update one value by entering key first, then gets value
may need to convert value to i or s as needed (for key = .. to_i???)
update key value

else "none" to skip

print latest version of hash

exit program
  
=end

puts "What is the client's name?"
client_name = gets.chomp

puts "Number of children living in the household?"
client_children_number = gets.chomp.to_i

puts "What is the client's decor theme?"
client_decor_theme = gets.chomp

puts "How many rooms to decorate?"
client_rooms = gets.chomp.to_i

puts "Does the client speak english? (yes/no)"
client_english = gets.chomp

if client_english == "yes"
  client_english = true
else
  client_english = false
end

client_data = {name: client_name, children_number: client_children_number, theme: client_decor_theme, rooms: client_rooms, speaks_english: client_english}

puts client_data

puts "Would you like to update any information? (yes / none)"
update = gets.chomp

if update == "yes"
  puts "Which section would you like to update? (name, children, decor, rooms, english)"
  section = gets.chomp
  case section
  when "name"
    puts "Please enter updated name:"
    new_name = gets.chomp
    client_data[:name] = new_name
  when "children"
    puts "Please enter the correct number of children:"
    new_children = gets.chomp.to_i
    client_data[:children_number] = new_children
  end

# elsif update == "none"

end

puts client_data






















