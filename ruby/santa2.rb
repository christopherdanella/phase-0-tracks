class Santa

  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaaaappy holidays!"
  end

  def milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

santa = Santa.new
santa.speak
santa.milk_and_cookies("oreo")