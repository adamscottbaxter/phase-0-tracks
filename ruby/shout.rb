module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!" + "  " + "ヽ(´▽｀)ノ"
  end
end

p Shout.yell_angrily("I'll get you next time")

puts Shout.yelling_happily("I'm the king of the world")
