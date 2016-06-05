# Dice_to_do
require 'SQLite3'

list = SQLite3::Database.new("list.db")
list.results_as_hash = true
rolls = SQLite3::Database.new("rolls.db")


create_list_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS list (
    id INTEGER PRIMARY KEY,
    task VARCHAR(255)
  );
SQL

create_roll_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS rolls (
    id INTEGER PRIMARY KEY,
    roll INT
  );
SQL

def dice_roll
  die = [1,2,3,4,5,6] 
  x = die.sample
  y = die.sample
  return x + y
end

def roll(db)
  puts "Alright, time to roll"
  n = dice_roll
  puts "just rolled a #{n}..."
  selection = db.execute("SELECT task FROM list WHERE id=#{n-1}")
  to_do = selection[0]['task']
  puts "Your task today is: #{to_do}."
end

def create_whole_list(db, item)
  item.each do |i|
    db.execute("INSERT INTO list (task) VALUES (?)", [i])
  end
end

def update_list(db, id, new_task)
  db.execute("UPDATE list SET task=(?) WHERE id=#{id}", [new_task])
end

list.execute(create_list_table_cmd)
rolls.execute(create_roll_table_cmd)

print_list = list.execute("SELECT id, task FROM list")

if list.execute("SELECT * FROM list WHERE id=1").length < 1
  puts "Would you like to (a) Use the default list or (b) create your own?"
  
  response = gets.chomp
  if response == "b"
      puts "The order in which you enter the tasks will influence how often they are rolled, the first items you enter will occur more frequently than items entered at the end of the list."
      puts "first task?"
      t7 = gets.chomp
      puts "second task?"
      t6 = gets.chomp
      puts "third task?"
      t8 = gets.chomp
      puts "forth task?"
      t5 = gets.chomp
      puts "fifth task?"
      t9 = gets.chomp
      puts "sixth task?"
      t4 = gets.chomp
      puts "seventh task?"
      t10 = gets.chomp
      puts "eighth task?"
      t3 = gets.chomp
      puts "ninth task?"
      t11 = gets.chomp
      puts "tenth task?"
      t2 = gets.chomp
      puts "eleventh task?"
      t12 = gets.chomp
      task_array = [t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12]
      create_whole_list(list, task_array)
  else
    create_whole_list(list, ["clean the gutters", "weed the garden", "wash the car", "mow the lawn", "clean the bathroom" , "clean the kitchen", "vacuum the carpet", "sweep the floors", "clean the refrigerator", "give the dog a bath", "wash the windows"])
  end
  puts "List created, time to roll."
  roll(list)
else
  puts "It looks like a list already exists, would you like to (u)pdate the list or get (r)olling?"
  choice = gets.chomp
  if choice == "u"
    puts print_list
    task_choice = ""
    until task_choice == "q"
      puts "Which task id would you like to update? press (q) to finish updating."
      task_choice = gets.chomp
      break if task_choice == "q"
      puts "What would you like the task to be instead?"
      change = gets.chomp
      update_list(list, task_choice, change)
      print_list = list.execute("SELECT id, task FROM list")
      puts print_list
    end
    # puts "Alright, time to roll"
    # n = dice_roll
    # puts "just rolled a #{n}..."
    # selection = list.execute("SELECT task FROM list WHERE id=#{n-1}")
    # to_do = selection[0]['task']
    # puts "Your task today is: #{to_do}."

    roll(list)

  else
    # n = dice_roll
    # puts "just rolled a #{n}..."
    # selection = list.execute("SELECT task FROM list WHERE id=#{n-1}")
    # to_do = selection[0]['task']
    # puts "Your task today is: #{to_do}."
    roll(list)
  end

end


