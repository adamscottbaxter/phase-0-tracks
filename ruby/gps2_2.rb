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
