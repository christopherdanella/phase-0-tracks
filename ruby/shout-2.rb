# module Shout
# 
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# 
# 
#   def self.yelling_happily(happy_words)
#     happy_words + "!" + " :D"
#   end
# end
# 
# p Shout.yell_angrily("WHAT ARE YOU DOING?")
# p Shout.yelling_happily("Great job")


module Shout

  def surprise_shout(words)
    words + "!!! " + "Happy Birthday!"
  end

  def shocked_shout(words)
    words + "! " + "WHAT HAPPENED?"
  end
end

class Friend
  include Shout
end


class Sibling
  include Shout
end

friend = Friend.new
p friend.surprise_shout("SURPRISE CHRIS")
p friend.shocked_shout("Oh my god")

sibling = Sibling.new
p sibling.surprise_shout("SURPRISE")
p sibling.shocked_shout("What's going on here?")


