module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end


  def self.yelling_happily(happy_words)
    happy_words + "!" + " :D"
  end
end

p Shout.yell_angrily("WHAT ARE YOU DOING?")
p Shout.yelling_happily("Great job")