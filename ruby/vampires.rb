counter = 1

puts "How many employees will be processed?"
num_employees = gets.chomp.to_i

while counter <= num_employees do

  puts "What is your name?"
  name = gets.chomp
  
  puts "How old are you?"
  age = gets.to_i
  
  puts "What year were you born?"
  year = gets.to_i
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  bread = gets.chomp
  
  puts "Would you like to enroll in the company’s health insurance? (yes/no)"
  insurance = gets.chomp

  allergy = ""
  until allergy == "sunshine" || allergy == "done"
    puts "Please list your allergies one at a time. Type 'done' when finished."
    allergy = gets.chomp
  end
  if allergy == "sunshine"
    #puts "Probably a vampire."
    counter += 1
  else
    if age + year == 2016 || age + year == 2015
      age_correct = true
    else
      age_correct = false
    end
    
    if name == "Drake Cula" || name == "Tu Fang"
      result = "Definitely a vampire"
    elsif age_correct && bread == "yes"
      result = "Probably not a vampire"
    elsif age_correct == false && (bread == "no" || insurance == "no")
      result = "Probably not a vampire"
    elsif age_correct == false && bread == "no" && insurance == "no"
      result = "Almost certainly a vampire"
    else
      result = "Results inconclusive"
    end

    #puts result
    counter += 1
  end

end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
    

