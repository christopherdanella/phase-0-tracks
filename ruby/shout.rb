# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angirly(words)
#     words + "!!!" + " :("
#   end
# 
#   def self.yelling_happily(joyful_words)
#     joyful_words + "!" + " :D"
#   end
# end
# 
# puts Shout.yell_angirly("I AM ANGRY")
# puts Shout.yelling_happily("Yayyy")

module Shout
  def furious(words)
    words + " WHY WOULD YOU DO THAT?!?!"
  end

  def praise(happy_words)
    happy_words + " WAY TO GO!!!! :))))"
  end
end


class Parent
  include Shout
end



class Coach
  include Shout
end


parent = Parent.new
puts "Parent says: " + parent.furious("HOW DARE YOU, CHRISTOPHER!")
puts "Parent says: " + parent.praise("YOU GOT AN A+ ON YOUR EXAM!")

coach = Coach.new
puts "Coach says: " + coach.furious("BUT WE WERE WINNING THE GAME!")
puts "Coach says: " + coach.praise("YOU PLAYED GREAT TODAY!")

