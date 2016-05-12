def add_to_array(x, y)
  x << y
end
p add_to_array([4, 5, 6], "cheetos")
baby_names = ["Leah", "Alex", "Cole", "Benjamin"]
p add_to_array(baby_names, "Charlie")
dog_names = ["Scooter", "Chewy", "Willow", "Apollo"]
p add_to_array(dog_names, "Bingo")
 
def build_array(a, b, c)
  fancy_array = [a, b, c]
  p fancy_array
end
grocery_list = []
grocery_list << "salad"
grocery_list << "milk"
grocery_list << "cheetos"
grocery_list << "juice"
grocery_list << "coffee"
p grocery_list
grocery_list.delete_at(2)
p grocery_list
grocery_list.insert(2, "carrots")
p grocery_list
grocery_list.shift
p grocery_list
 
question = grocery_list.include?("milk")
  if question 
          puts "It's on the list!"
  else
          puts "It's not on the list!"
  end
types_of_dogs = ["Cavalier King Charles Spaniel", "Yorkie", "Shitzhu/Poodle Mix"]
p types_of_dogs
new_array = grocery_list + types_of_dogs
p new_array
build_array("9", "cat", "swingset")
