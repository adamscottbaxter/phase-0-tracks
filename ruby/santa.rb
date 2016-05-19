class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
  # def initialize(gender, ethnicity, reindeer_ranking = ["Rudolph","Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], age = 0)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph","Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    # @reindeer_ranking = reindeer_ranking
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}."
  end

  def celebrate_birthday
    @age =+ 1
  end
 
  def get_mad_at(deer_name)
    @reindeer_ranking = @reindeer_ranking - [deer_name]
    @reindeer_ranking.insert(-1, deer_name)
  end

  # #GETTERS
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # #SETTERS
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

end

# p Santa.class

nick = Santa.new("male", "Caucasian")

# p nick.class

# nick.speak

# nick.eat_milk_and_cookies("Oreo")

# p nick
 
santas = []
some_genders = ["lady", "gentleman", "person", "cyborg", "mutant", "cyclops", "being"]
some_ethnicities = ["purple", "green", "gray", "steel", "polka-dotted", "striped", "checkered", "wooden", "ethereal"]

# 3.times do |i|
#   santas << Santa.new(some_genders.sample, some_ethnicities.sample)
#   santas[i].age = rand(0..140)
# end

# santas.each do |x|
#   # puts x.age
#   puts "Instance of a #{x.age} year old #{x.gender} with #{x.ethnicity} ethnicity."
# end

10000.times do |i|
  i = Santa.new(some_genders.sample, some_ethnicities.sample)
  i.age = rand(0..140)
  puts "Instance of a #{i.age} year old #{i.gender} with #{i.ethnicity} ethnicity."
end

# p nick
# nick.celebrate_birthday
# p nick
# p nick.get_mad_at("Prancer")
# p nick.age
# p nick.ethnicity

