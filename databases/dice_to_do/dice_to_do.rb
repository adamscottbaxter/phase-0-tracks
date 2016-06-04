# Dice_to_do
# A to-do list app with a random twist
# for each in list ask if they want to update that item
# require gems
require 'SQLite3'

# create SQLite3 database
list = SQLite3::Database.new("list.db")
list.results_as_hash = true
rolls = SQLite3::Database.new("rolls.db")
# rolls.results_as_hash = true
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
    one VARCHAR(255),
    two VARCHAR(255),
    three VARCHAR(255)
  );
SQL
# create_list_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS list (
#     id INTEGER PRIMARY KEY,
#     task_number INT,
#     task_name VARCHAR(255)
#   );
# SQL

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
def create_list(db, one, two, three)
  db.execute("INSERT INTO list (one, two, three) VALUES (?, ?, ?)", [one, two, three])
end

def update_list(db, key, value)
  db.execute("UPDATE list SET #{key}=(?) WHERE id=1", [value])
end
# UPDATE rabbits SET age=4 WHERE name="Queen Bey";
# def create_list(db, task_number, task_name)
#   db.execute("INSERT INTO list (task_number, task_name) VALUES (?, ?)", [task_number, task_name])
# end

if list.execute("SELECT * FROM list WHERE id=1").length < 1
  puts "Would you like to (a) Use the default list or (b) create your own?"
  
  response = gets.chomp
  if response == "b"
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
else
  puts "It looks like a list already exists, would you like to (u)pdate the list or get (r)olling?"
  choice = gets.chomp
  if choice == "u"
    p print list
    puts "Which task would you like to update?"
    task_choice = gets.chomp
    puts "What would you like the task to be instead?"
    change = gets.chomp
    update_list(list, task_choice, change)
    # list.execute("UPDATE list SET #{task_choice}=#{change} WHERE id=1")
    # list.execute("UPDATE list SET task_choice=<<-SQL change SQL;")
                  # UPDATE list SET task_choice="false" WHERE id=3;
  else
    puts "running program..."
  end

end

print_list = list.execute("SELECT * FROM list")


print_list[0].each do |key, value|
  puts "If you roll a #{key} then the task is: #{value}"
end

# results.each do |task|
#  puts "#{task['task1']} is #{task['task2']}"
# end
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#   puts "#{kitten['name']} is #{kitten['age']} years old."
# end
