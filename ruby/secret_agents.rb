#input a string, while in method , create a loop that repeats teh process for every character in the string using counter variable

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

puts encrypt("Z e dWWWWAAA")
