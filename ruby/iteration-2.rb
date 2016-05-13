def dog_bark
  puts "What does a dog say?"
  yield("Lily", "Wonton", "Boomer")
end

dog_bark { |dog1, dog2, dog3| puts "#{dog1}, #{dog2}, and #{dog3} say woof woof woof!" }