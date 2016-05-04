puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance = gets.chomp

if age + year == 2016 || age + year == 2015
  age_correct = true
else
  age_correct = false
end

if age_correct && bread == "yes"
  result = "Probably not a vampire"
elsif age_correct == false && (bread == "no" || insurance == "no")
  result = "Probably not a vampire"
else
  result = "Results inconclusive"
end

print result
