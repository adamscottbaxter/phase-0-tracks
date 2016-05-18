class Santa

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}."
  end

  def initialize(gender, ethnicity, reindeer_ranking = ["Rudolph","Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], age = 0)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = reindeer_ranking
    @age = age
  end
 
end

p Santa.class

nick = Santa.new("male", "Caucasian")

p nick.class

nick.speak

nick.eat_milk_and_cookies("Oreo")

# p nick
