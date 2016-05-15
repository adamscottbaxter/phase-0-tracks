=begin
  
define method
receives string argument
split(' ')
rearrange the order of the indices

if vowel
swap all vowels to next vowel

if consonant
  swap to next consonant

upcase the first index of both words
=end

def next_letter(char)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  char.downcase!
  if vowels.include? char
    if char == vowels[vowels.length - 1]
      char = vowels[0]
    else
      char = vowels[vowels.index(char) + 1]
    end
  elsif consonants.include? char
      if char == consonants[consonants.length - 1]
        char = consonants[0]
      else
      char = consonants[consonants.index(char) + 1]
    end
  end
end
  

def name_changer(agent_name)
  agent_name.downcase!
  swap_name = agent_name.split(' ')
  swap_name[0], swap_name[1] = swap_name[1], swap_name[0]
  alpha_fragment = swap_name[0].split('')
  beta_fragment = swap_name[1].split('')

  alpha_fragment.map! do |item|
    next_letter(item)
  end

  beta_fragment.map! do |item|
    next_letter(item)
  end

  sneaky_name = alpha_fragment.join('').capitalize! + " " + beta_fragment.join('').capitalize!

end

collection = {}
spy_name = ""

until spy_name == "quit"
  puts "Hi spy, what's your real name(s) so we can make some edits? Type 'quit' when done."
  spy_name = gets.chomp
  break if spy_name == "quit"
  transformed = name_changer(spy_name)
  collection[spy_name] = transformed
end

collection.each { |key, value| puts "#{key}: AKA #{value}"}

