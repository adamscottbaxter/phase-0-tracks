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

def name_changer(agent_name)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  agent_name.downcase!
  swap_name = agent_name.split(' ')
  swap_name[0], swap_name[1] = swap_name[1], swap_name[0]
  alpha_fragment = swap_name[0].split('')
  beta_fragment = swap_name[1].split('')
  alpha_fragment.each do |letter| 
    if vowels.include? letter
      letter = vowels[vowels.index(letter) + 1]
      p letter
    elsif consonants.include? letter
      puts "consonant found"
    end
  end
end

p name_changer("Adam Baxter")
