class Dancer
  attr_reader :name, :card
  attr_accessor :age 

    def initialize(name, age)
      @name = name
      @age = age
      @card = card
    end

    def pirouette   
      "*twirls*"
    end

    def bow
      "*bows*"
    end

    def card
      []
    end


# I was unable to figure out how to add the dancers to the open array.
# I thought I could create a method that added the people to the open card array above
# using the << method but I kept hitting errors. 
    def queue_dance_with(person)
      @dancer.queue_dance_with("Mikhail Baryshnikov") << card
      @dancer.card
    end
end