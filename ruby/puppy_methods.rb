# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

# end

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times do
      print "Woof!"
    end
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(years)
    dog_age = years * 7
    dog_age
  end
  
  def shake(which_hand)
    puts "the dog shook your #{which_hand} hand."
  end
  
  def initialize
    puts "initializing new puppy instance..."
  end
  
end

# fido = Puppy.new

# p fido.class

# fido.fetch("ball")

# fido.speak(10)

# fido.roll_over

# puts fido.dog_years(4)

# fido.shake("right")


class Chef
  
  def initialize
    puts "Initializing a new Chef instance"
  end
  
  def chop(veggie)
    puts "Chef is now chopping #{veggie}"
  end
  
  def yell(name)
    puts "The angry chef is now yelling at #{name}!"
  end
  
  def name
    @name = name
  end
  
end

gordon = Chef.new

gordon.chop("Carrots")

gordon.yell("Scott")

counter = 0

staff = []

while counter < 50
  person = Chef.new
  staff.push person
  # for rb_any_to_s in staff
  #   rb_any_to_s = "Chef#{counter}"
  # end
  counter += 1
end



puts staff.each { |x| x.chop("onions")}

puts staff.each { |x| x.yell("Scott")}
# puts staff
