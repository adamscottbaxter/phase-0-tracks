# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define method
  # split string by ' ' 
  # insert into hash
  # set default qty to 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # ask user what item to add
  # ask user the quantity of that item
  # add those items to the hash
# output: 'item' added with 'qty'

# Method to remove an item from the list
# input: ask user what item to be removed: hash key
# steps:
  # .delete key
# output: reprint updated list

# Method to update the quantity of an item
# input: item and quantity of existing item
# steps:
  # ask user which item to edit and what the value should be
  # update hash with new data
# output: hash

# Method to print a list and make it look pretty
# input: hash
# steps:
  #print to string using string interpolation to make it look pretty
# output: string of hash key /values

grocery_list = Hash.new
item_list = []

def create_list(list_name, list)
  item_list = list.split(',')
  item_list.each { |item| add(list_name, item.strip, 1)}
end

def add(list_name, item, qty)
  list_name[item] = qty
  puts "Added #{qty} #{item} to the list" 
end

def remove(list_name, item)
  list_name.delete(item)
end

def update(list_name, item, qty)
  list_name[item] = qty
  puts "Updated #{item} to #{qty}"
end

def print_list(list_name)
  list_name.each { |item, qty| puts "-#{item}: #{qty}"}
end

puts "What items would you like to add to your new list? Please separate the items with a comma"
new_list = gets.chomp
create_list(grocery_list, new_list)
print_list(grocery_list)

loop do
  puts "Would you like to add an item, update quantities, or remove an item from the list(or type done)?"
  user_choice = gets.chomp
  case user_choice
  when "add"
    puts "What item would you like to add?"
    add_item = gets.chomp
    puts "How much of the item would you like to add?"
    item_quantity = gets.chomp
    add(grocery_list, add_item, item_quantity)
  when "update"
    puts "What item would you like to update?"
    update_item = gets.chomp
    while grocery_list[update_item] == nil 
      puts "Invalid Entry, please re-enter selection."
      update_item = gets.chomp
    end
    puts "How much of the item would you like to add?"
    update_quantity = gets.chomp
    update(grocery_list, update_item, update_quantity)
  when "remove"
    puts "What item would you like to remove?"
    remove_item = gets.chomp
    while grocery_list[remove_item] == nil 
      puts "Invalid Entry, please re-enter selection."
      remove_item = gets.chomp
    end
    remove(grocery_list, remove_item)
  when "done"
    print_list(grocery_list)
    break
  else
    puts "Invalid input"
  end
  print_list(grocery_list)
end



# create_list(grocery_list, "apples carrots milk")

# p grocery_list

# add(grocery_list, "corn", 3)

# p grocery_list

# remove(grocery_list, "milk")

# p grocery_list

# update(grocery_list, "carrots", 88)

# p grocery_list

# print_list(grocery_list)

# What did you learn about pseudocode from working on this challenge?

# I learned to put more specific thought into what should be the input and outputs of my methods and code blocks. Pseudocoding effectively, while seemingly slow initially, makes for an efficient process overall.

# What are the tradeoffs of using arrays and hashes for this challenge?

# Well, we only used hashes. I think using arrays, either an array for eacy item / quantity or for all items and all quantities, would be a little clunkier, especially when editing data.

# What does a method return?

# It will implicitly return the last line unless there is an explicit return of something else.

# What kind of things can you pass into methods as arguments?

# I think you can pass just about any object as an argument. So far we have passed integers, strings, hashes, arrays, and booleans.

# How can you pass information between methods?

# You can pass information between methods by passing in variables as arguments for the methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# In this challenge I got tripped up when we encountered an error when we did not include the hash name as a parameter for our methods. I had to think about it for a minute but eventually figured it out. Getting stuck for a bit solidified that concept for me. The rest I'm pretty comfortable with.
