#Will Friebel & Adam Baxter
#Release 4.6

#changes every letter in a string to the next letter in the alphabet

def encrypt(word)
word.downcase!
count = 0
  while count < word.length
    if word[count] == " "

    elsif word[count] == "z"
      word[count] = "a"
    else
      word[count]=word[count].next
    end
    count += 1
  end
  return word
end

#changes every letter in a string to the previous letter in the alphabet

def decrypt(word)
word.downcase!
count = 0
  while count < word.length
    if word[count] == " "

    elsif word[count] == "a"
      word[count] = "z"
    else
      #takes the letter at a certain position in a string and assigns it to the 
      #character representation of that same letter's numerical ordinate subtracted by one.
      word[count] = (word[count].ord-1).chr 
    end
    count += 1
  end
  return word
end

# driver code
puts "Would you like to encrypt or decrypt a password?"
type = gets.chomp.downcase

until type == "encrypt" || type == "decrypt"
  puts "Please respond encrypt or decrypt"
  type = gets.chomp.downcase
end

if type == "encrypt"
  puts "Please enter the password you would like to encrypt:"
  result = encrypt(gets.chomp.downcase)
else
  puts "Please enter the password you would like to decrypt:"
  result = decrypt(gets.chomp.downcase)
end

puts result
