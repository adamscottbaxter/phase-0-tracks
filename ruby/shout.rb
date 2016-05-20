# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!" + "  " + "ヽ(´▽｀)ノ"
#   end
# end

# p Shout.yell_angrily("I'll get you next time")

# puts Shout.yelling_happily("I'm the king of the world")

module Shout
  def alert(words)
    "*** " + words.upcase + "!" + " ***"
  end

  def all_clear(words)
    words + " * All Clear! *"
  end
end

class Fire
  include Shout
end

class Shark
  include Shout
end

blaze = Fire.new
p blaze.alert("there's a fire on the mountain")

sharknado = Shark.new
p sharknado.all_clear("Shark Warning")
