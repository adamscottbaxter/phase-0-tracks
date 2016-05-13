def practice
  puts "hi"
  name1 = "Bob"
  name2 = "Joesph"
  yield("Sandy", "Jessica")
end

practice { |name1, name2| puts "Great to see you, #{name1} and #{name2}"}

