# Dice_to_do
# A to-do list app with a random twist

# require gems
require 'SQLite3'

# create SQLite3 database
list = SQLite3::Database.new("list.db")
list.results_as_hash = true
rolls = SQLite3::Database.new("rolls.db")
rolls.results_as_hash = true
# learn about fancy string delimiters
# create_list_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS list (
#     id INTEGER PRIMARY KEY,
#     task1 VARCHAR(255),
#     task2 VARCHAR(255),
#     task3 VARCHAR(255),
#     task4 VARCHAR(255),
#     task5 VARCHAR(255),
#     task6 VARCHAR(255),
#     task7 VARCHAR(255),
#     task8 VARCHAR(255),
#     task9 VARCHAR(255),
#     task10 VARCHAR(255),
#     task11 VARCHAR(255)
#   );
# SQL

create_list_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS list (
    id INTEGER PRIMARY KEY,
    task1 VARCHAR(255),
    task2 VARCHAR(255),
    task3 VARCHAR(255)
  );
SQL
create_roll_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS rolls (
    id INTEGER PRIMARY KEY,
    roll INT
  );
SQL

# create a  table (if it's not there already)
list.execute(create_list_table_cmd)
rolls.execute(create_roll_table_cmd)
# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# def create_list(db, task1, task2, task3, task4, task5, task6, task7, task8, task9, task10, task11)
#   db.execute("INSERT INTO list (task1, task2, task3, task4, task5, task6, task7, task8, task9, task10, task11) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", [task1, task2, task3, task4, task5, task6, task7, task8, task9, task10, task11])
# end

# create_list(list, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k")
def create_list(db, task1, task2, task3)
  db.execute("INSERT INTO list (task1, task2, task3) VALUES (?, ?, ?)", [task1, task2, task3])
end
puts "Would you like to (a) Use the default list or (b) create your own?"


response = gets.chomp
if response = "b"
    puts "first task?"
    t1 = gets.chomp
    puts "second task?"
    t2 = gets.chomp
    puts "third task?"
    t3 = gets.chomp
    create_list(list, t1, t2, t3)
else
  create_list(list, "vacuum", "dust", "mop")
end
print_list = list.execute("SELECT * FROM list")

p print_list
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#   puts "#{kitten['name']} is #{kitten['age']} years old."
# end
